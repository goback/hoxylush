from django.db               import transaction

from rest_framework          import status, views
from rest_framework.response import Response

from .serializers            import CartInfoSerializer, CartSerializer
from orders.models           import Order, OrderItem, OrderStatus
from products.models         import ProductOption

class CartViewSet(views.APIView):
    ORDER_STATUS = "장바구니"

    def get(self, request):
        serializers = CartInfoSerializer(
            OrderItem.objects.filter(
                order__user                 = request.user,
                order__order_status__status = self.ORDER_STATUS
            ),
            many=True
        )
        return Response(serializers.data)

    def put(self, request):
        option_id   = request.data['option_id']
        quantity    = request.data['quantity']
        order_item  = OrderItem.objects.get(
                order__user                 = request.user,
                order__order_status__status = self.ORDER_STATUS,
                product_option__id          = option_id
            )

        order_item.price    = order_item.product_option.price * quantity
        order_item.quantity = quantity

        serializers = CartSerializer(order_item, data=request.data)
        if serializers.is_valid():
            serializers.save()
            return Response(status.HTTP_200_OK)
        return Response(serializers.errors, status=status.HTTP_400_BAD_REQUEST)

    def patch(self, request):
        option_id = request.data['option_id']
        quantity  = request.data['quantity']
        with transaction.atomic():
            product_option = ProductOption.objects.get(id=option_id)
            order_status   = OrderStatus.objects.get(status=self.ORDER_STATUS)
            order, _       = Order.objects.get_or_create(user=request.user, order_status=order_status)

            order_item, is_created = OrderItem.objects.get_or_create(
                product            = product_option.product,
                order              = order,
                product_option_id  = option_id,
                defaults           = {
                    'price'    : 0,
                    'quantity' : 0
                }
            )

            if is_created:
                order_item.quantity  = quantity
            else:
                order_item.quantity += quantity
            order_item.price         = order_item.quantity * product_option.price
            order_item.save()

            serializers = CartSerializer(order_item, data=request.data)
            if serializers.is_valid():
                return Response(status.HTTP_200_OK)
            return Response(serializers.errors, status=status.HTTP_400_BAD_REQUEST)

    def delete(self, request):
        try:
            option_id_list = request.GET.getlist('option_id')
            OrderItem.objects.filter(order__user=request.user, order__order_status__status=self.ORDER_STATUS, product_option_id__in=option_id_list).delete()
        except ValueError:
            return Response({'MESSAGES': 'BAD_REQUEST'}, status=status.HTTP_400_BAD_REQUEST)
        return Response({'MESSAGES': 'SUCCESS'}, status=status.HTTP_200_OK)
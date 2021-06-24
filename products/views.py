from django.db.models           import Q

from rest_framework             import generics, status
from rest_framework.permissions import AllowAny
from rest_framework.decorators  import api_view
from rest_framework.response    import Response

from .serializers               import ProductListSerializer, ProductRetrieveSerializer, ProductLikeSerializer
from products.models            import Product

class ProductListAPIView(generics.ListAPIView):
    queryset           = Product.objects.all()
    serializer_class   = ProductListSerializer
    permission_classes = [AllowAny]

    def get_queryset(self):
        qs              = super().get_queryset()
        category_id     = self.request.GET.get("category_id")
        sub_category_id = self.request.GET.get("sub_category_id")
        keyword         = self.request.GET.get("keyword")
        hit             = self.request.GET.get("hit")
        pagination      = int(self.request.GET.get("pagination", 0))
        limit           = int(self.request.GET.get("limit", 4))
        offset          = pagination * 4

        if category_id or sub_category_id:
            products = qs.filter(
                Q(category_id=category_id) | Q(sub_category_id=sub_category_id)
            )[offset : offset + limit]

        elif keyword:
            products = qs.filter(
                Q(name__contains=keyword) | Q(hashtag__contains=keyword)
            ).distinct()

        elif hit:
            products = qs.order_by("hit")

        else:
            products = qs[offset : offset + limit]

        return products

class ProductRetrieveAPIView(generics.RetrieveAPIView):
    queryset           = Product.objects.all()
    serializer_class   = ProductRetrieveSerializer
    permission_classes = [AllowAny]

@api_view(["GET"])
def like(request):
    like_list = request.user.product_set.all()
    serializer = ProductLikeSerializer(like_list, many=True)
    return Response(serializer.data)

@api_view(["POST"])
def like(request):
    try:
        product_id = request.data['product_id']
        if request.user.like_set.filter(product=product_id).exists():
            request.user.like_set.remove(product_id)
        else:
            request.user.like_set.add(product_id)
        return Response({"Message": "SUCCESS"}, status=status.HTTP_200_OK)
    except KeyError:
        return Response({"Message": "KEY_ERROR"}, status=status.HTTP_400_BAD_REQUEST)
    except Product.DoesNotExist:
        return Response({"Message": "INVALID_PRODUCT"}, status=status.HTTP_404_NOT_FOUND)
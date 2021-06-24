from rest_framework import serializers
from orders.models  import OrderItem

class CartSerializer(serializers.ModelSerializer):
    option_id = serializers.SerializerMethodField()

    class Meta:
        model  = OrderItem
        fields = [
            "option_id",
            "quantity",
        ]

    def get_option_id(self, order_item):
        return order_item.product_option_id

class CartInfoSerializer(serializers.ModelSerializer):
    id            = serializers.SerializerMethodField()
    option_id     = serializers.SerializerMethodField()
    name          = serializers.SerializerMethodField()
    sub_category  = serializers.SerializerMethodField()
    product_image = serializers.SerializerMethodField()
    weight        = serializers.SerializerMethodField()
    price         = serializers.SerializerMethodField()
    total_price   = serializers.SerializerMethodField()
    stock         = serializers.SerializerMethodField()
    is_checked    = serializers.SerializerMethodField()

    class Meta:
        model  = OrderItem
        fields = [
            "order_id",
            "id",
            "option_id",
            "name",
            "sub_category",
            "product_image",
            "weight",
            "price",
            "total_price",
            "quantity",
            "stock",
            "is_checked",
        ]

    def get_id(self, order_item):
        return order_item.product_id

    def get_option_id(self, order_item):
        return order_item.product_option_id

    def get_name(self, order_item):
        return order_item.product.name

    def get_sub_category(self, order_item):
        return order_item.product.sub_category.sub_title

    def get_product_image(self, order_item):
        return order_item.product.productimage_set.first().image_url

    def get_weight(self, order_item):
        return order_item.product_option.weight

    def get_price(self, order_item):
        return int(order_item.product_option.price)

    def get_total_price(self, order_item):
        return int(order_item.price)

    def get_stock(self, order_item):
        return order_item.product_option.quantity

    def get_is_checked(self, order_item):
        return True

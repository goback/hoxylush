from rest_framework import serializers
from .models        import Product, ProductOption, ProductDescription, Ingredient, Tag

class ProductLikeSerializer(serializers.ModelSerializer):
    product_id = serializers.SerializerMethodField()
    price      = serializers.SerializerMethodField()
    image_url  = serializers.SerializerMethodField()

    class Meta:
        model  = Product
        fields = [
            "product_id",
            "name",
            "hashtag",
            "price",
            "image_url",
        ]

    def get_product_id(self, product):
        return product.id

    def get_price(self, product):
        return int(product.productoption_set.first().price)

    def get_image_url(self, product):
        return product.productimage_set.first().image_url

class ProductOptionSerializer(serializers.ModelSerializer):
    option_id = serializers.SerializerMethodField()
    price     = serializers.SerializerMethodField()

    class Meta:
        model  = ProductOption
        fields = [
            "option_id",
            "price",
            "quantity",
            "weight",
        ]

    def get_option_id(self, option):
        return option.id

    def get_price(self, option):
        return int(option.price)

class ProductTagSerializer(serializers.ModelSerializer):
    tag = serializers.SerializerMethodField()

    class Meta:
        model  = Tag
        fields = [
            "id",
            "tag",
        ]

    def get_tag(self, tag):
        return tag.name

class ProductDescriptionSerializer(serializers.ModelSerializer):
    description1 = serializers.SerializerMethodField()
    image_url1   = serializers.SerializerMethodField()

    class Meta:
        model  = ProductDescription
        fields = [
            "description1",
            "image_url1",
        ]
    
    def get_description1(self, product_description):
        return product_description.description

    def get_image_url1(self, product_description):
        return product_description.image_url

class ProductIngredientSerializer(serializers.ModelSerializer):
    description2 = serializers.SerializerMethodField()
    image_url2   = serializers.SerializerMethodField()
    name2        = serializers.SerializerMethodField()

    class Meta:
        model  = Ingredient
        fields = [
            "description2",
            "image_url2",
            "name2",
        ]

    def get_description2(self, ingredient):
        return ingredient.description

    def get_image_url2(self, ingredient):
        return ingredient.image_url

    def get_name2(self, ingredient):
        return ingredient.name

class ProductListSerializer(serializers.ModelSerializer):
    option    = serializers.SerializerMethodField()
    image_url = serializers.SerializerMethodField()
    tag       = serializers.SerializerMethodField()

    class Meta:
        model  = Product
        fields = [
            "id",
            "name",
            "hashtag",
            "option",
            "image_url",
            "tag",
        ]

    def get_option(self, product):
        return ProductOptionSerializer(product.productoption_set.all(), many=True).data

    def get_image_url(self, product):
        return product.productimage_set.first().image_url

    def get_tag(self, product):
        return ProductTagSerializer(product.tag_set.all(), many=True).data

class ProductRetrieveSerializer(serializers.ModelSerializer):
    product_id           = serializers.SerializerMethodField()
    product_options      = serializers.SerializerMethodField()
    product_images       = serializers.SerializerMethodField()
    product_descriptions = serializers.SerializerMethodField()
    ingredient_detail    = serializers.SerializerMethodField()
    tag                  = serializers.SerializerMethodField()

    class Meta:
        model  = Product
        fields = [
            "product_id",
            "name",
            "hashtag",
            "hit",
            "video_url",
            "product_options",
            "product_images",
            "product_descriptions",
            "ingredient_detail",
            "tag",
        ]

    def get_product_id(self, product):
        return product.id

    def get_product_options(self, product):
        return ProductOptionSerializer(product.productoption_set.all(), many=True).data

    def get_product_images(self, product):
        return [productimage.image_url for productimage in product.productimage_set.all()]

    def get_product_descriptions(self, product):
        return ProductDescriptionSerializer(product.productdescription_set.all(), many=True).data

    def get_ingredient_detail(self, product):
        return ProductIngredientSerializer(product.ingredient_set.all(), many=True).data

    def get_tag(self, product):
        return [tag.name for tag in product.tag_set.all()]

from django.urls  import path
from orders.views import CartViewSet

urlpatterns = [
    path("/cart", CartViewSet.as_view()),
]
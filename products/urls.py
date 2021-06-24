from django.urls import path
from .views      import ProductRetrieveAPIView, ProductListAPIView, like

urlpatterns = [
    path("", ProductListAPIView.as_view()),
    path("/<int:pk>", ProductRetrieveAPIView.as_view()),
    path("/like", like),
]

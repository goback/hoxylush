from django.urls import path
from .views      import SignupView

from rest_framework_jwt.views import obtain_jwt_token

urlpatterns = [
    path("/signup", SignupView.as_view()),
    path("/login", obtain_jwt_token)
]
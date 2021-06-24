from rest_framework import serializers
from django.contrib.auth import get_user_model

User = get_user_model()

class SignupSerializer(serializers.ModelSerializer):
    password = serializers.CharField(write_only=True)

    def create(self, validated_data):
        user = User.objects.create(
            account=validated_data["account"],
            nickname=validated_data["nickname"],
            email=validated_data["email"],
            address=validated_data["address"],
            phone_number=validated_data["phone_number"],
            )
        user.set_password(validated_data["password"])
        user.save()
        return user

    class Meta:
        model = User
        fields = [
            "pk",
            "account",
            "password",
            "nickname",
            "email",
            "address",
            "phone_number",
        ]

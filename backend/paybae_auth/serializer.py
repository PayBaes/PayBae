from django.shortcuts import render, HttpResponse
from rest_framework.response import Response
from rest_framework import viewsets, serializers
from django.contrib.auth.models import User
from rest_framework.decorators import api_view, permission_classes
from rest_framework.permissions import AllowAny, IsAuthenticated

# Create your views here.

MIN_LENGTH = 8


class UserSerializer(serializers.ModelSerializer):
    password = serializers.CharField(
        write_only=True,
        min_length=MIN_LENGTH,
        error_messages={
            "min_length": f"Password must be longer than {MIN_LENGTH} characters."
        },
    )

    class Meta:  # Meta class is used to define the model and fields to be serialized (Class Meta is used to define the model and fields to be serialized)
        model = User
        fields = (
            "username",
            "email",
            "password",
        )

    def create_user(self, validated_data):
        user = User.objects.create(
            username=validated_data["username"],
            email=validated_data["email"],
        )
        user.set_password(validated_data["password"])
        user.save()
        return user

    # password validation with db for login
    def validate(self, data):
        user = User.objects.filter(username=data["username"]).first()
        if user is None:
            raise serializers.ValidationError("User does not exist")
        if not user.check_password(data["password"]):
            raise serializers.ValidationError("Invalid Credentials")
        return data

    # check if mail is valid or not
    def validate_email(self, email):
        if not email.endswith("@gmail.com"):
            return False
        return True

class UserViewSet(viewsets.ModelViewSet):
    permission_classes = (AllowAny,)
    queryset = User.objects.all()  # Querying all the users
    serializer_class = UserSerializer  # Serializing the data to the viewset

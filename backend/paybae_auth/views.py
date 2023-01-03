from django.shortcuts import render, HttpResponse
from rest_framework.response import Response 
from rest_framework import viewsets, serializers
from django.contrib.auth.models import User 
from rest_framework.decorators import api_view, permission_classes
from rest_framework.permissions import AllowAny, IsAuthenticated
# Create your views here.

# Setup
@api_view(['GET'],)
@permission_classes([AllowAny],)
def HelloDjango(request):
    print("Hello Django!")
    return Response({"message": "Hello Django!"}, status=200)


#SignUp

MIN_LENGTH=8

class UserSerializer(serializers.ModelSerializer):
    password = serializers.CharField(
        write_only=True,
        min_length=MIN_LENGTH,
        error_messages={
            "min_length": f"Password must be longer than {MIN_LENGTH} characters."
        },

    )


    password2 = serializers.CharField(
        write_only=True,
        min_length=MIN_LENGTH,
        error_messages={
            "min_length": f"Password must be longer than {MIN_LENGTH} characters."
        },

    )


    class Meta:
        model=User
        fields="__all__"

    def validate(self, data):
      if data["password"] != data["password2"]:
        raise serializers.ValidationError("Password does not match.")
        return data

    def create(self,validated_data):
        user=User.objects.create(
            username=validated_data["username"],
            email=validated_data["email"],
            first_name=validated_data["first_name"],
            last_name=validated_data["last_name"],
            active=validated_data["active"]
        )

        user.set_password(validated_data["password"])
        user.save()


        return user



class UserViewSet(viewsets.ModelViewSet):
    queryset=User.objects.all()
    serializer_class=UserSerializer       
    
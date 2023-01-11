# from django.shortcuts import render, HttpResponse
# from rest_framework.response import Response 
# from rest_framework.decorators import api_view, permission_classes
# from rest_framework.permissions import AllowAny, IsAuthenticated
# # Create your views here.

# # Setup
# @api_view(['GET'],)
# @permission_classes([AllowAny],)
# def HelloDjango(request):
#     print("Hello Django!")
#     return Response({"message": "Hello Django!"}, status=200)

from rest_framework import viewsets
from rest_framework.permissions import IsAuthenticated
from django.contrib.auth import get_user_model
from . serializers import UserSerializer

class UserViewSet(viewsets.ModelViewSet):

    permission_classes = (IsAuthenticated,)
    serializer_class = UserSerializer
    queryset = get_user_model().objects.all()
# Setup
@api_view(['GET'],)
@permission_classes([AllowAny],)
def HelloDjango(request):
    print("Hello Django!")
    return Response({"message": "Hello Django!"}, status=200)

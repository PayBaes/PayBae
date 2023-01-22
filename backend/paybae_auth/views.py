from rest_framework import viewsets
from .serializer import UserSerializer
from rest_framework.response import Response
from rest_framework.decorators import action
from rest_framework.permissions import AllowAny
from rest_framework import status
from django.contrib.auth.models import User
from rest_framework.authtoken.models import Token
import datetime

class UserViewSet(viewsets.ModelViewSet):
    permission_classes = (AllowAny,)
    queryset = User.objects.all()
    serializer_class = UserSerializer

    # signup with url endpoint /signup
    @action(detail=False, methods=["post"], permission_classes=[AllowAny])
    def signup(self, request):

        # throw error if user already exists for the username and email
        if User.objects.filter(username=request.data.get("username")).exists():
            return Response({"error": "Username already exists"})
        
        if User.objects.filter(email=request.data.get("email")).exists():
            return Response({"error": "Email already exists"})
        
        # check if mail is valid
        if not UserSerializer().validate_email(request.data.get("email")):
            return Response({"error": "Email is not valid"})
        
        # create user if user does not exist
        UserSerializer().create_user(request.data)

        return Response({"message": "User created successfully"})

    # login with url endpoint /login with authentication
    # add url pattern 
    @action(methods=["post"], detail=False, permission_classes=[AllowAny])
    def login(self, request):
        """
        Login the user by checking the credentials
        """
        username = request.data.get("username")
        password = request.data.get("password")
        user = User.objects.filter(username=username)

        # throw error if user does not exist
        if not user.exists():
            return Response(
                {"error": "User does not exist"}, status=status.HTTP_400_BAD_REQUEST
            )

        if not UserSerializer().validate(request.data):
            return Response(
                {"error": "Invalid Credentials"}, status=status.HTTP_400_BAD_REQUEST
            )

        # return jwt token if user exists
        token, _ = Token.objects.get_or_create(user=user[0])

        # add 1 day to the token expiry
        token.created = datetime.datetime.now() - datetime.timedelta(days=1)
        token.save()

        return Response({"User Logged In": True, "token": token.key})

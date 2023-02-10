from django.test import TestCase, Client
from django.urls import reverse
from django.contrib.auth import get_user_model

class LoginSignupTest(TestCase):
    def setUp(self):
        self.client = Client()
        self.signup_url = "/api/users/signup/"
        self.login_url = "/api/users/login/"
        self.user = {
            'username': 'testuser',
            'password': 'testpassword',
            'email': 'testemail@gmail.com',
        }
        self.user2 = {
            'username': 'testuser2',
            'password': 'testpassword2',
            'email': 'testemail@gmail.com',
        }

    def test_signup(self):
        response = self.client.post(self.signup_url, self.user, format='json')
        self.assertEqual(response.status_code, 200)
        self.assertEqual(response.data, {'message': 'User created successfully'})

    def test_login(self):
        self.client.post(self.signup_url, self.user, format='json')
        response = self.client.post(self.login_url, self.user, format='json')
        self.assertEqual(response.status_code, 200)
        self.assertTrue('token' in response.data)
    
    def test_login_with_wrong_password(self):
        self.client.post(self.signup_url, self.user, format='json')
        self.user['password'] = 'wrongpassword'
        response = self.client.post(self.login_url, self.user, format='json')
        self.assertEqual(response.status_code, 400)
        #self.assertEqual(response.data, {'error': 'Invalid Credentials'})
    
    def test_login_with_wrong_username(self):
        self.client.post(self.signup_url, self.user, format='json')
        self.user['username'] = 'wrongusername'
        response = self.client.post(self.login_url, self.user, format='json')
        self.assertEqual(response.status_code, 400)
        self.assertEqual(response.data, {'error': 'User does not exist'})
    
    def test_signup_with_existing_username(self):
        self.client.post(self.signup_url, self.user, format='json')
        response = self.client.post(self.signup_url, self.user, format='json')
        self.assertEqual(response.status_code, 200)
        self.assertEqual(response.data, {'error': 'Username already exists'})
    
    def test_signup_with_existing_email(self):
        self.client.post(self.signup_url, self.user, format='json')
        response = self.client.post(self.signup_url, self.user2, format='json')
        self.assertEqual(response.status_code, 200)
        self.assertEqual(response.data, {'error': 'Email already exists'})
    
    def test_signup_with_existing_username_and_email(self):
        self.client.post(self.signup_url, self.user, format='json')
        response = self.client.post(self.signup_url, self.user, format='json')
        self.assertEqual(response.status_code, 200)
        self.assertEqual(response.data, {'error': 'Username already exists'})
    
    def test_signup_with_invalid_email(self):
        self.user['email'] = 'invalidemail'
        response = self.client.post(self.signup_url, self.user, format='json')
        self.assertEqual(response.status_code, 200)
        self.assertEqual(response.data, {'error': 'Email is not valid'})

# Path: backend/paybae_auth/views.py



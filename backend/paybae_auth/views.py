from django.shortcuts import render, HttpResponse
# Create your views here.

# Setup
def HelloDjango(request):
    return HttpResponse("Hello Django!")
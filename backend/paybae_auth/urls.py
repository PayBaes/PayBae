# from django.urls import path
# from . import views
# from rest_framework.routers import DefaultRouter
# from django.conf.urls import include

# router=DefaultRouter()
# router.register("", views.UserViewSet)
# urlpatterns = [
#     path('api-auth/', include('rest_framework.urls'))
# ]

# urlpatterns +=router.urls



from django.urls import path
from . import views

urlpatterns = [
    path('HelloDjango', views.HelloDjango, name='HelloDjango'),
]
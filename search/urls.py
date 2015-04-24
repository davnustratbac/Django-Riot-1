from django.conf.urls import include, url
from django.contrib import admin

from .views import home, search

urlpatterns = [

    url(r'^$', home, name='home'),

    url(r'^search/$', search, name='search'),
]

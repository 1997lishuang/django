"""shoppingApp URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path, include
from app import views

from django.conf.urls import url, include
# from rest_framework import router

urlpatterns = [
    path('admin/', admin.site.urls),
    path('findBlogById/<int:pk>', views.findBlogById),
    path('findBlogByAll/', views.findBlogByAll),
    path('findBlogByCategory/', views.findBlogByCategory),
    path('findBlogByLikeArticleTitleAndCreatedTimeAndCategory', views.findBlogByLikeArticleTitleAndCreatedTimeAndCategory),
    path('ueditor/', include('DjangoUeditor.urls')), #添加DjangoUeditor的URL
]

# int：必须为整数
# str：匹配除了"/"路径分割符之外的所有的字符串
# slug：匹配任意ASCII字符+连字符和下划线
# uuid：格式化uuid
# path：匹配任意非空字符
from django.contrib import admin

# Register your models here.

from .models import News #從models 使用class News

admin.site.register(News) #後台同步資料庫
#python manage.py makemigrations
#python manege.py migrate
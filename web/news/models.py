from django.db import models

# Create your models here.


class News(models.Model): #(models.Model) 用於資料表建立
    title = models.CharField(max_length=50) #文字長度
    content = models.TextField()  # TextField(非必填blank=True)
    photo_file = models.CharField(max_length=200)
    video_url = models.CharField(max_length=200)
    create_date = models.DateField(auto_now_add=True)
    
    
    class Meta: 
        db_table = 'news' #資料表名稱 news
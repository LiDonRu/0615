from django.db import models

# Create your models here.

class Travel(models.Model):
    title = models.CharField(max_length=100)
    price = models.IntegerField() #IntegerField() 整數
    discount = models.IntegerField()
    photo_url = models.CharField(max_length=255)
    content = models.TextField()
    create_date = models.DateTimeField(auto_now_add=True)
    
    class Meta:
        
        db_table = 'travel'
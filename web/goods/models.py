from django.db import models

# Create your models here.


class Goods(models.Model):
    platform = models.CharField(max_length=30)
    name = models.CharField(max_length=200)
    price = models.IntegerField() #為整數
    photo_url = models.CharField(max_length=255)
    goods_url = models.CharField(max_length=255)
    items = models.IntegerField() #我自訂的分類 id
    create_date = models.DateField(auto_now_add=True)
    
    class Meta:
        db_table= 'goods'
        
class GoodsItems(models.Model):
    itemName = models.CharField(max_length=30)
    
    class Meta:
        db_table = 'items'
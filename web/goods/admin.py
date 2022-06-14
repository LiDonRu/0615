from django.contrib import admin

# Register your models here.

from .models import Goods,GoodsItems

class GoodsAdmin(admin.ModelAdmin): #客製化的顯示欄位
    list_display = ('platform','name','price') #這是商品顯示
    
class ItemsAdmin(admin.ModelAdmin):
    list_display = ('id','itemName')

admin.site.register(Goods,GoodsAdmin)
admin.site.register(GoodsItems,ItemsAdmin)

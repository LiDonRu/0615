from django.shortcuts import render

# Create your views here.

from .model import Goods,GoodsItems



def goodsIndex(request):
    allGoods = Goods.objects.all().order_by('-id')
    content = {'goods':allGoods}
    return render(request,'goods,html',content)


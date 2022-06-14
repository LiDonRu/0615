from django.shortcuts import render

# Create your views here.

from .models import Travel
from django.core.paginator import Paginator,EmptyPage,PageNotAnInteger #做分頁使用的

def travel(request):
    
    qarea = ''
    sprice = ""
    eprice = ""
    
    if 'area' in request.GET:
        qarea = request.GET['area'] # 抓網址上面定義的參數
        sprice = request.GET['startP']
        eprice = request.GET['endP']
        
        #只有景點，沒有價格範圍
        if ( len(qarea) > 0 and len(sprice) == 0 and len(eprice) == 0) :
            data = Travel.objects.filter(title__contains=qarea).order_by('-id') 
            #title__contains包含qarea，filter過濾器
            
        #沒有景點，只有價格範圍
        elif (len(qarea) == 0 and len(sprice) > 0 and len(eprice) > 0):
            data = Travel.objects.filter(price__gte=sprice,price__lte=eprice).order_by('price')
            #gte大於等於  lte小於等於
            #gt 大於  lt 小於  
            
            
            
        #有價格有景點 
        elif (len(qarea) > 0 and len(sprice) > 0 and len(eprice) > 0):
            data = Travel.objects.filter(data = Travel.objects.filter(price__gte=sprice,price__lte=eprice).order_by('price'))
        else:
            data = Travel.objects.all().order_by('-id')#抓取所有的資料
            
        
    else:
        data = Travel.objects.all().order_by('-id') #抓取所有的資料
    
    paginator =Paginator(data, 10)
    page = request.GET.get('page')
    try:
        content = paginator.page(page) #從網頁中回傳的參數:page抓取回來
    except PageNotAnInteger: # 如非整數 跳至第一頁
        content = paginator.page(1)
    except EmptyPage: #如空頁 跳轉最後一頁
        content = paginator.page(paginator.num_pages)
    
    travelData = {"travel_list":content,'area':qarea,'startP':sprice,'endP':eprice}
    
    return render(request,"travel.html",travelData)

#建立資料 python manage.py startapp "要建立的資料名稱"
#更改資料 setting models admin 
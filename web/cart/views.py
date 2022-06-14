from django.shortcuts import render,redirect #redirect  指向跳到某一個網址去

from cart import models
from product.models import Products
from travel.models import Travel

# Create your views here.

cartlist = list()
customname = ''
customphone = ''
customaddress = ''
customemail = ''

def cart(request):  #顯示購物車內容
    global cartlist
    allcart = cartlist
    total = 0
    
    for unit in cartlist:  #計算商品總額
        total += int(unit[3])
    grandtotal = total + 60  #有加運費
    return render(request,'cart.html',locals()) #將函數中所有變數傳給HTML，render 會去變化模板的內容



def addtocart(request,ctype=None,productid=None):
    global cartlist
    
    if ctype == 'add':  #要將商品加入購物車的
        product = Products.objects.get(id=productid)
        flag = True # 預設購物車中沒有相同的商品。表示購物車在此商品不存在
        for unit in cartlist:
            if product.name == unit[0]:  #若商品存在的話
                unit[2] = str(int(unit[2])+1) #數量加1
                unit[3] = str(int(unit[3])+ product.price) #累計金額
                flag = False;  #表示商品之前已存在於購物車中
                break
        if flag:  #代表商品沒有存在於購物車中
            templist = list()
            templist.append(product.name) #商品名
            templist.append(str(product.price)) #商品價格
            templist.append('1') #數量
            templist.append(str(product.price)) #總價
            cartlist.append(templist)
        
        request.session['cartlist'] = cartlist #將購物車內容存入session
        return redirect('/cart/')
    elif ctype == 'update': #更新購物車商品數量
        n = 0
        for unit in cartlist:
            unit[2] = request.POST.get('qty'+str(n),'1') #取得數量
            unit[3] = str(int(unit[1]) * int(unit[2])) #總價
            n += 1
        request.session['cartlist'] = cartlist #將購物車內容存入session
        return redirect('/cart/') 
    elif ctype == 'empty': #清空購物車
        cartlist = list()
        request.session['cartlist'] = cartlist #將購物車內容存入session
        return redirect('/cart/')
    elif ctype == 'remove':  #刪除購物車中的某一項商品
        del cartlist[int(productid)]
        request.session['cartlist'] = cartlist #將購物車內容存入session
        return redirect('/cart/')
            
        
def cartorder(request):  #結帳

    if request.session.get('Ulogined',False) :  #若使用者已經登入時，就轉到 customer.html
        global cartlist,customname,customphone,customaddress,customemail           
        allcart = cartlist
        total = 0
        for unit in cartlist:
            total += int(unit[3])
        grandtotal = total + 60
        name = customname
        phone = customphone
        address = customaddress
        email = customemail
        return render(request,'cartorder.html',locals())
    else:
        return redirect('/login/') #未登入時，轉到login
 

    
def cartok(request): #最後確認買單
    global cartlist,customname,customphone,customaddress,customemail           
    total = 0
    for unit in cartlist:
        total += int(unit[3])
    grandtotal = total + 60
    
    customname = request.POST.get('CuName','')
    customphone = request.POST.get('CuPhone','')
    customaddress = request.POST.get('CuAddr','')
    customemail = request.POST.get('CuEmail','')
    payType = request.POST.get('payType','')
    
    unitorder = models.OrdersModel.objects.create(subtotal=total,shipping=60,grandtotal=grandtotal,customname=customname,customphone=customphone,customemail=customemail,customaddress=customaddress,paytype=payType)#建立訂單用
    for unit in cartlist:
        total = int(unit[1]) * int(unit[2])
        unitdetail = models.DetailModel.objects.create(dorder=unitorder,pname=unit[0],unitprice=unit[1],quantity=unit[2],dtotal=total)
    orderid = unitorder.id  # 取得訂單編號
    name = unitorder.customname  #取得購買者姓名
    email = unitorder.customemail #取得購買者Email
    
    cartlist = list()
    request.session['cartlist'] = cartlist
    return render(request,'cartok.html',locals())
    
def cartordercheck(request):   #查詢訂單
    orderid = request.GET.get('orderid','') #取訂單編號
    customemail = request.GET.get('customemail','') #取使用者Email
    if orderid == '' and customemail == '':
        firstsearch = 1
    else:
        order = models.OrdersModel.objects.filter(id=orderid).first()
        if order == None or order.customemail != customemail:
            notfound = 1
        else:
            details = models.DetailModel.objects.filter(dorder=order)
    return render(request,"cartordercheck.html",locals())   



     



    

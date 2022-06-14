from django.shortcuts import render

from django.http import HttpResponseRedirect #資料庫做導向

# Create your views here.

from .models import Customer

import hashlib


def customer(request):
    
    if 'username' in request.POST:
        username = request.POST['username'] #Email
        sex = request.POST['sex']
        birthday = request.POST['birthday']
        email = request.POST['email']
        phone = request.POST['phone']
        address = request.POST['address']
        password = request.POST['pwd'] #密碼
        
        # obj = Customer.objects.get(email=user,password=pwd)
        #登入時不建議使用。get 是用在保證有資料之下可以抓取到資料的
        #若沒資料時，使用 get 會發生例外
        
        Customer.objects.create(name=username,sex=sex,birthday=birthday,email=email,phone=phone,address=address,password=password)
        
    if request.session.get('Ulogined',False) :  #若使用者已經登入時，就轉到 customer.html
        return render(request,'customer.html')
    else:
        return HttpResponseRedirect('/login/') #未登入時，轉到login



def cusUpdate(request):

    if 'password' in request.POST:

        mail = request.session['userEmail']
        pwd = request.POST['password']

        obj = Customer.objects.get(email=mail) #計算筆數
        pwd = hashlib.sha256(pwd.encode('utf-8')).hexdigest() #加密
        obj.password = pwd

        obj.save()

    return render(request,'updateCus.html')    




def login(request):
    if 'username' in request.POST:
        user = request.POST['username']   #使用者的Email
        pwd = request.POST['password']    #使用者的密碼
        
        pwd = hashlib.sha256(pwd.encode('utf-8')).hexdigest()
        
        #如果你要用 get 時，資料庫中一定要有這個資料才可以
        #不然會發生例外 (不建議這樣作)
        #obj = Customer.objects.get(email=user,password=pwd)
        
        
        obj = Customer.objects.filter(email=user,password=pwd).count()
        if obj > 0 :
            request.session['Ulogined'] = True   #Session 將使用者資料記憶在主機端，瀏覽器關閉時就消失
            request.session['userEmail'] = user
            return HttpResponseRedirect('/')
        else:
            return render(request,'login.html')
        
    else:
        if request.session.get('Ulogined',False) :
            del request.session['Ulogined']
            if request.session.get('userEmail','') != '':
                del request.session['userEmail']
        return render(request,'login.html')
    
    
    
    
    
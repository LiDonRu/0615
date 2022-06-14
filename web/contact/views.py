from django.shortcuts import render

# Create your views here.
from .models import Contact

def contact(request):

    if 'name' in request.POST: #name是HTML輸入姓名的那欄
        name = request.POST['name']
        email = request.POST['email']
        subject = request.POST['subject']
        message = request.POST['message']

        
        obj  = Contact.objects.create(name=name,email=email,subject=subject,content=message)
        #name=name(欄位=變數名稱)
        obj.save() #將資料存檔
    return render(request,'contact.html') #將資料回傳

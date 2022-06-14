from django.shortcuts import render,redirect #redirect 轉向，指定轉到網頁

# Create your views here.

from .forms import UploadModelForm
from .models import Photo

def index(request):
    photos = Photo.objects.all() #從資料表中抓取目前存放在資料表中的資料
    form = UploadModelForm() #生成物件，準備來上傳圖片用作表單驗證
    
    if request.method == "POST":
        form = UploadModelForm(request.POST,request.FILES)
        if form.is_valid():  #表單驗證
            form.save() # 存檔
            return redirect('/photos')
        
    
    context = {
        'photos' : photos,
        'form' : form
        
        }    
    
    return render(request,'photos.html',context)
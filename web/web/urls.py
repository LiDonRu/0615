"""web URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path

from news.views import news,index

from product.views import products

from customer.views import customer,cusUpdate,login

from contact.views import contact

from photos.views import index as pindex


from django.conf import settings
from django.conf.urls.static import static

from cart.views import cart,addtocart,cartorder,cartok,cartordercheck

from sendmail.views import sendMail
from travel.views import travel


urlpatterns = [
    path('admin/', admin.site.urls),
    path('news/',news),
    path('product/',products),
    path('customer/',customer),
    path('',index),
    path('index.html',index),
    path('contact/',contact),
    path('cusUpdate/',cusUpdate),
    path('login/',login),  
    path('photos/',pindex), 
    path('cart/',cart),
    path('addtocart/<str:ctype>/',addtocart),
    path('addtocart/<str:ctype>/<int:productid>/',addtocart),
    path('cartorder/',cartorder),
    path('cartok/',cartok),
    path('cartordercheck/',cartordercheck),
    path('sendmail/',sendMail),
    path('travel/',travel),
    path('photo/',pindex),
    
]

if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL,
                          document_root=settings.MEDIA_ROOT)


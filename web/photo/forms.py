# -*- coding: utf-8 -*-
"""
Created on Sun May 22 08:02:55 2022

@author: 聖東
"""

#上傳檔案
from django import forms
from .models import Photo

class UploadModelForm(forms.ModelForm):
    class Meta:
        model = Photo
        fields = ('image',) #欄位
        widgets = {
            
            'image':forms.FileInput(attrs={'class':'form-control-file'})
            }
        
        
        
        
        
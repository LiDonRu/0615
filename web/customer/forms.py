# 引入表單類
from django import forms
# 引入User模型
from django.contrib.auth.models import User

# 登入表單,繼承了forms.Form類
class UserLoginForm(forms.Form):
	username = forms.CharField()
	password = forms.CharField()
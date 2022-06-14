from django.db import models

# Create your models here.

class Contact(models.Model):
    name = models.CharField(max_length=50,null=False)
    email = models.EmailField(max_length=100,blank=True,default='')
    subject = models.CharField(max_length=100,blank=True,default='')
    content = models.TextField()
    create_date = models.DateTimeField(auto_now_add=True)
    
    class Meta:
        db_table = 'contact'

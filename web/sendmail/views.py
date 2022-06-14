from django.shortcuts import render

from email.mime.text import MIMEText
from smtplib import SMTP,SMTPAuthenticationError,SMTPException

# Create your views here.

def sendMail(request):
    smtp = "smtp.gmail.com:587" #Gmail主機位址
    account = "q16850000@gmail.com"
    password = "s10011050"
    
    content = "非常感謝您的訂購。我們將盡快出貨!"
    msg = MIMEText(content) #郵件內容
    
    msg["Subject"] = "聯成購物城" #郵件主旨
    mailto = "q16850000@gmail.com" #收件者
    
    #mailto = ['q16850000@gmail.com','1991y10m05d@gmail.com'] 多人寄送
    
    server = SMTP(smtp) #建立SMTP 連線
    server.ehlo()
    server.starttls()
    
    try:
        server.login(account,password)
        server.sendmail(account,mailto,msg.as_string())
        sendMsg = "郵件已寄出"
    except  SMTPAuthenticationError:
        sendMsg = "無法登入!"
    except:
        sendMsg = "郵件發生錯誤"
    server.quit() #關閉連線
    
    return render(request,"",locals())


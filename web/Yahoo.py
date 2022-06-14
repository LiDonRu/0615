# -*- coding: utf-8 -*-
"""
Created on Mon Sep 23 16:22:44 2019

@author: watson
"""
# 導入pymysql模塊
import pymysql
# 連接database
conn = pymysql.connect(host='localhost', user='root',password='123456789',database='web',charset='utf8')
# 得到一個可以執行SQL語句的光標對象
cursor = conn.cursor()
# 引入撰寫爬蟲所需套件
import requests
from bs4 import BeautifulSoup
from datetime import datetime as dt  # 抓日期函式庫

today = dt.today()  #日期格式

todayF = today.strftime("%Y-%m-%d")   # 將設定日期格式轉換為字串使用 

#定義網址
url = 'https://tw.buy.yahoo.com/search/product'

product = input("請輸入欲搜尋的商品：")

data = {}
data['p'] = product

header = {
    'Accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3',
    'Accept-Encoding': 'gzip, deflate, br',
    'Accept-Language': 'zh-TW,zh;q=0.9,en-US;q=0.8,en;q=0.7',
    'Cache-Control': 'max-age=0',
    'Connection': 'keep-alive',
    'Cookie': 'F=d=mm2lbcg9vOQKnGAcb2whn_fW0bgTxsmxMls-; AO=u=1; T=z=KhSAdBK15EdBk4mofn5oGHpMjc3TwY0NzdONzNOMjQ-&a=QAE&sk=DAAeHg.UqZlHkJ&ks=EAA6AcJnhNVy76O9tSBuV4RAA--~G&kt=EAAahDpT42YGtOBrv.WX6szxw--~I&ku=FAALpwr9AXtcU6RD4wrXe2dhxJ6RVmjTp3f2UaCoV9NRwyCrU4D0yKNW.bPMqeD6qKzHmnY755CU8x3engPcQ7SLg0wfiFe4XTjY3IdS22eiDy18hGkecGFmKD2dpVtMVQDjoR0oqvvJXSF2G6wpGz.od_Vlqj7le.mtqkVsPuwG5c-~A&d=bnMBeWFob28BZwFOTExGSlc0UklFSlZIVFlSNDNSQkFESU9QTQFzbAFOVEF3T0FFek1EQTVNRFE1TlRNLQFhAVFBRQFhYwFBQmNFN28yVgFsYXQBS2hTQWRCAWNzAQFzYwFkZXNrdG9wX3dlYgFmcwFOX05aWjFSYjN3MU0BenoBS2hTQWRCQTdF&af=Q3FBQjVoJnRzPTE1NjAzNTY5MzgmcHM9M1VGckd4MXRrM3NYNF9TRExua1dSUS0t; PH=fn=QK3koYQ9QqbXekzO3Tif&l=zh-Hant-TW&i=tw; Y=v=1&n=29otfnjdkpfgi&l=552rur/o&p=m2evvtw00000000&iz=403&r=8d&intl=tw; _ga=GA1.3.19479922.1566548614; ms=c2=sME&c2_expire=1569140607195&co_servername=e1edd09d2982c966d4c0547de27c5982&co_servername_expire=1567183102010; APID=1Aa58879e0-cd56-11e8-91bd-06df8b6d0272; APIDTS=1569224157; YAct=d=tZGQOry9_hWoyWamapyysN.SfQ--&v=1; _gid=GA1.3.1518564491.1569227158; GUCS=AXsVDHKc; B=alo3aapdrugdh&b=4&d=C7G7D0dpYEMolLorj_TD2.swBaQWv52cp0E-&s=4n&i=vsXBsDiWqbq754brWcRJ; GUC=AQEBAQFdic5eb0IjGQUg&s=AQAAANGSt532&g=XYiBpg',
    'Host': 'tw.buy.yahoo.com',
    'Referer': 'https://tw.buy.yahoo.com/search/product?p=iphone%2011&guccounter=1&guce_referrer=aHR0cHM6Ly90dy5idXkueWFob28uY29tLw&guce_referrer_sig=AQAAAL2IliOJ4GqIG8UJhgV8VdGSXb7hlma_C2k1MrCYcBjV2AZO9GfwVjuCH65-cFbDn60uWkdRsOwCMfSxsZTZqty1v9_DgOJDzeQH8yIiP-Iggy_0fyH5htsczwTT4RiaCvP7omC3ftNPL3sHv9egj8-FSjDRN-JrioBKEl6vJkE5',
    'Sec-Fetch-Mode': 'navigate',
    'Sec-Fetch-Site': 'same-origin',
    'Sec-Fetch-User': '?1',
    'Upgrade-Insecure-Requests': '1',
    'User-Agent': 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36'
}

#向網址要回網頁原始碼，並透過 BeautifulSoup 解析
res = requests.get(url,headers=header,params=data)
soup = BeautifulSoup(res.text, 'html.parser')

for asus in soup.find_all(class_='BaseGridItem__grid___2wuJ7 BaseGridItem__multipleImage___37M7b'):
    title = asus.find(class_='BaseGridItem__title___2HWui').text
    print(title) 
    link = asus.find('a').get('href');    
    print(link)
    imgall = asus.find('img').get('srcset')
    imgdata = imgall.split(',')
    img = imgdata[0].split()    
    print(img[0])
    
    price = asus.find('em').text

    
    price = price.replace('$','')
    price = price.replace(',','')
    print(price)
    print('-'*30)
    
    sql = "select * from goods where name'{}'".format(title)#找尋這個資料表是否有這個商品
    cursor.execute(sql) #sql的執行
    row = cursor.fetchone() # 從查詢出來的資料抓出一筆，它是元組 ()
    
    if row == None: #表示沒有這筆資料，我就新增到資料表中
        sql = "INSERT INTO goods(platform,name,price,photo_url,goods_url,items,create_date) VALUES ('Yahoo',%s,%s,%s,%s,'1',%s);"
        cursor.execute(sql, [title,price,img[0],link,todayF])
    else:
        sql = "update goods set price='{}' where id='{}'".format(price,row[0])
        # 當id是什麼的時候更改價格
        cursor.execute(sql)
        
    # 執行SQL語句
    
    # 提交事務
    conn.commit()
cursor.close()
conn.close()    

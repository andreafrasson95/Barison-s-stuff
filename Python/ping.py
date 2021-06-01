import os
import requests
import time
import sys
import multiprocessing
import subprocess

multiprocessing.freeze_support()
bot_id="1845077937:AAFXuCd9sP0KKiYQUXSbE15Z5fmiuisA4Fs"
chat_id="-516200630"

link="https://api.telegram.org/bot1845077937:AAFXuCd9sP0KKiYQUXSbE15Z5fmiuisA4Fs/sendMessage?chat_id=-516200630&text="

ip="192.168.1.1"

if(len(sys.argv)==1):
  print("Using Default IP " + ip)
else:  
  ip=sys.argv[1]
  print("I am using Ip "+ip)

while(1):
  output = subprocess.check_output(["ping.exe","-n","1",ip], stdin =subprocess.PIPE,
                                   stderr=subprocess.STDOUT, shell=True, universal_newlines= True,
                                   timeout=5
                                  )
                           

  
  if(output.find("Risposta da "+ip)==-1):
    url=link+"PC "+ip+" Non Risponde"
    requests.get(url)     
  
  time.sleep(10)


#!/bin/bash
DATE=$(date +"%Y-%m-%d_%H%M")
# raspistill -w 800 -h 600 -o $DATE.jpg      PiCameraの場合

fswebcam  $Date.jpg   # USB Cameraかつオプションなしの場合

uuencode $DATE.jpg $DATE.jpg | mail -s "attachment test" xxxxx@xxxxxxx    #送信するメールアドレスを記載
sleep 10m　　　　# ここも考えどころ。10分も必要か？
rm *.jpg

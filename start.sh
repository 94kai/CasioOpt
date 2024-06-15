# smali转dex
./smalis2dex.sh ./source/classes.dex ./source/smalis/CasioLibNotificationListenerService.smali ./source/smalis/Utils.smali ./source/smalis/Utils\$1.smali ./source/smalis/MainActivity.smali


cd source
# 压入source下的文件
../zipFiles2Apk.sh ../build/origin.apk ./classes.dex ./assets/dashang.png

cd ..
# zipAlign sign
./alignAndSign.sh ./build/origin.apk ./build/out.apk




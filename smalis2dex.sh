# 把一些文件压缩到apk中
if [ $# -le 1 ]; then
    echo "需要2个以上的参数，第一个为dex，第二个开始的参数为需要编译的smali文件"
    exit 1
fi
java -jar ./lib/smali-2.5.2.jar a -o $@

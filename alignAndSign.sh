# 对第一个参数进行zipalign、sign，最终输出到第二个参数路径
if [ $# -ne 2 ]; then
    echo "需要两个参数，input.apk output.apk"
    exit 1
fi

mkdir -p build
# 输出参数
echo "start zipalign..."
./lib/zipalign -p -f -v 4 $1 ./build/temp.apk
echo "zipalign end ..."

echo "start sign..."
echo "xk3440395" | java -jar ./lib/apksigner.jar sign --ks ./keystore.jks --out $2 ./build/temp.apk
echo "sign end..."

# 把一些文件压缩到apk中
if [ $# -le 1 ]; then
    echo "需要2个以上的参数，第一个为apk，第二个为需要压缩进去的文件"
    exit 1
fi
apk=$1
shift 1
# 遍历剩余的参数
for arg in "$@"
do
	zip $apk $arg
done

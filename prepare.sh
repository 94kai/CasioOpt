# classes.dex重命名为最大的索引，保证可插入classes.dex。执行一次即可
rm -rf build
mkdir -p build/dexs
cp ./origin.apk ./build/origin.apk 
cd build/dexs
unzip ../origin.apk '*.dex'

max_number=1  
  
# 遍历当前目录下的所有.dex文件  
for file in *.dex; do  
    # 提取文件名中的数字部分（如果有的话）  
    if [[ $file =~ ^classes([0-9]+)\.dex$ ]]; then  
        number=${BASH_REMATCH[1]}  
          
        # 如果找到的数字大于当前的最大序号，更新最大序号  
        if (( number > max_number )); then  
            max_number=$number  
        fi  
    fi  
done  

max_number=$((max_number+1))
mv classes.dex classes$max_number.dex

zip ../origin.apk classes$max_number.dex 

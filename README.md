> 卡西欧手表（仅测试了h5600mb）的通知目前只能对所有app全开或者全关，十分智障。本项目通过反编译修改CasioWatches App，实现仅接受微信通知的功能

1. origin.apk为官方apk
2. 执行prepare.sh，classes.dex->classesX.dex
3. 在source/smalis中放各种smali代码。其他文件如assets等文件，按照真实路径存放在source下
4. 修改start.sh的smali.jar参数，决定编译哪些smali到dex中
5. 修改start.sh的zipFiles2Apk参数，决定压缩哪些文件到apk中
6. 执行start.sh，生成build/out.apk


# 打赏
如果对你有用，可以给个打赏
![](./png/dashang.png)


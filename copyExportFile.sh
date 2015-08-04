#!/bin/bash
# 定义一个方法
foreachd(){
# 遍历参数1 
        for file in $1/*
            do
# 如果是目录就打印处理，然后继续遍历，递归调用
                if [ -d $file ]
                then
                    echo $file"是目录" 
                    fileName=`basename $file`
                    echo $fileName
                    basePath=${file}/Export/$fileName
                    fileJson=$basePath/$fileName.ExportJson
                    filePng=$basePath/${fileName}0.png
                    filePlist=$basePath/${fileName}0.plist
                    echo $fileJson
                    echo $filePng
                    echo $filePlist            
                    cp -rf $fileJson  /Users/zhangnan/tempWork/temp
                    cp -rf $filePng  /Users/zhangnan/tempWork/temp 
                    cp -rf $filePlist  /Users/zhangnan/tempWork/temp            
                elif [ -f $file ]
                then
                    # echo $file
                    echo ""
                fi
            done
}
# 执行，如果有参数就遍历指定的目录，否则遍历当前目录
# if [[ "x$1" == 'x' ]]
# then
#     foreachd "."
# else
#     foreachd "$1"
# fi 

foreachd "$1"
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
                    baseFile=`basename $file`
                    basePath=$file/Resources/*
                    # fileName= echo `basename $file`
                    # fileName=`echo $file | awk -F '/[^/]*$' '{print $1}'`
                    # fileName=$file/Resources
                    echo $basePath
                    cp -rf $basePath  /Users/zhangnan/tempWork/temp
                    # foreachd $file
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
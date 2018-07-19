#!/bin/bash
#自动根据后缀名解压文件


filename=$1                #要解压的文件
route=$2                   #解压到路径名
suffix="${filename##*.}"   #获取文件名的后缀

if [ -z $filename ]; then #判断是否输入了参数
    echo "usage: 2.self_compression.sh [--list] or [Source compressed file] [Destination path]"
    echo "Self compression accroding to the file name suffix"
elif [ $filename = '--list' ]; then 
    echo "Supported file types: zip tar tar.gz tar.bz2"
elif [[ -n $filename && -n $route ]]; then 
  
  if [[ $suffix == 'tar' ]] ;then
      tar -xvf $filename -c $route;
  elif [[ $suffix == 'gz' ]] ;then
      sudo tar -xzvf $filename -c $route;
  elif [[ $suffix == 'bz2' ]] ;then
      tar -xjvf $filename -c $route;
  elif [[ $suffix == 'zip' ]] ;then
      unzip $filename -d $route;
  else
      echo -e "error\NO supported file types: zip tar gz bz2"
  fi
fi	    

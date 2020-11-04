#!/bin/bash
#保留文件数
ReservedNum=5
FileDir=/mnt/sdb/mysql
date=$(date "+%Y%m%d-%H%M%S")
# 目标文件夹文件数量
FileNum=$(ls -l $FileDir|grep ^- |wc -l)
#当 文件数量 多于 5个的时候
while [ $FileNum -gt $ReservedNum ]
do
	# 找到第一个文件
	OldFile=$(ls -rt $FileDir| head -1)
	echo  $date "Delete File:" $OldFile
	# 删除
	rm -rf $FileDir/$OldFile
	# 文件数量减
	let "FileNum--"
done

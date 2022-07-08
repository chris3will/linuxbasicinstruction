#!/bin/bash
# 该脚本用来检测bash_call_demo.sh是否在运行，如果不在运行则执行该脚本
i=1
SERVICE="bash_call_demo"
echo "欢迎启动自动检测程序，主要关注的是bash_call_demo是否持续运行中"
while [ $i -le 10 ]
do
	# 首先是执行判断语句，我们先用这行指令做一个初步观察
	ps -C "$SERVICE" >/dev/null && echo "Running" || echo "Not Running";
	# use special shell variable called $? to get the exit status of the previously executed command
	# 我们需要再执行一步，来直接获取exit返回值
	ps -C "$SERVICE" >/dev/null
	flag1=$?
	if (( $flag1 == 0))
	then
		# 此时说明程序在正常运行中，无需启动
		echo "Take it easy, the program is running safely."
	else
		echo "The program is down, we restart it right now."
		
		# 此时说明程序不在正常运行中，我们要进行调用
		# bash_call_demo.sh > tmp.log &
		systemctl start "$SERVICE"
	fi
	i=$(( $i + 1 ))
	sleep 15
done


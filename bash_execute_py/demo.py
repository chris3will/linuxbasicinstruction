#!/usr/bin/python3
# 一个简易的python3脚本，通过bash来进行定期运行
import os, logging
from datetime import datetime
import time

if __name__ == '__main__':
	while 1:
		time.sleep(1)
		now = datetime.now()
		print("现在是: {}.".format(now.strftime("%Y-%m-%d %H:%M:%S")))


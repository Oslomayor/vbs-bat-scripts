@echo off

color F0

rem 设置窗口背景色为白色，文字颜色为黑色

title 批处理扫网段(By TaoGe)

rem 设置窗口标题

echo.

echo 输入你要扫描的IP段，直接按回车则为192.168.16：

set /p IpSection=

rem 将用户输入赋值给IpSection变量

if "%IpSection%"=="" (set IpSection=192.168.16)

rem 判断IpSection变量是否赋值，如果为空，则赋值为192.168.16

echo 输入你要扫描的IP起始位，直接按回车则为1：

set /p IpStart=

rem 将用户输入赋值给IpStart变量

if "%IpStart%"=="" (set IpStart=1)

rem 判断IpStart变量是否赋值，如果为空，则赋值为1

echo 输入你要扫描的IP结束位，直接按回车则为255：

set /p IpEnd=

rem 将用户输入赋值给IpEnd变量

if "%IpEnd%"=="" (set IpEnd=255)

rem 判断IpEnd变量是否赋值，如果为空，则赋值为255

echo 起始IP：%IpSection%.%IpStart%  

rem 显示起始IP

echo 结束IP：%IpSection%.%IpEnd%  

rem 显示结束IP

echo ======================================================= >>Ping-%IpSection%.txt

rem 记录分割线

echo 开始时间：%date%%time% >>Ping-%IpSection%.txt

rem 记录开始时间

echo 起始IP：%IpSection%.%IpStart% >>Ping-%IpSection%.txt  

rem 记录起始IP

echo 结束IP：%IpSection%.%IpEnd% >>Ping-%IpSection%.txt 

rem 记录结束IP

echo 正在扫描，请等待...

echo 提前结束请直接关闭窗口

@for /l %%n in (%IpStart%,1,%IpEnd%) do @ping -w 600 -n 1 %IpSection%.%%n|find  /i "ttl" >>Ping-%IpSection%.txt

rem 开始执行

echo 结束时间：%date% %time%  >>Ping-%IpSection%.txt

rem 记录结束时间

echo ======================================================= >>Ping-%IpSection%.txt

rem 记录分割线

echo 扫描完毕,按任意键退出...&pause>nul
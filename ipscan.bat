@echo off

color F0

rem ���ô��ڱ���ɫΪ��ɫ��������ɫΪ��ɫ

title ������ɨ����(By TaoGe)

rem ���ô��ڱ���

echo.

echo ������Ҫɨ���IP�Σ�ֱ�Ӱ��س���Ϊ192.168.16��

set /p IpSection=

rem ���û����븳ֵ��IpSection����

if "%IpSection%"=="" (set IpSection=192.168.16)

rem �ж�IpSection�����Ƿ�ֵ�����Ϊ�գ���ֵΪ192.168.16

echo ������Ҫɨ���IP��ʼλ��ֱ�Ӱ��س���Ϊ1��

set /p IpStart=

rem ���û����븳ֵ��IpStart����

if "%IpStart%"=="" (set IpStart=1)

rem �ж�IpStart�����Ƿ�ֵ�����Ϊ�գ���ֵΪ1

echo ������Ҫɨ���IP����λ��ֱ�Ӱ��س���Ϊ255��

set /p IpEnd=

rem ���û����븳ֵ��IpEnd����

if "%IpEnd%"=="" (set IpEnd=255)

rem �ж�IpEnd�����Ƿ�ֵ�����Ϊ�գ���ֵΪ255

echo ��ʼIP��%IpSection%.%IpStart%  

rem ��ʾ��ʼIP

echo ����IP��%IpSection%.%IpEnd%  

rem ��ʾ����IP

echo ======================================================= >>Ping-%IpSection%.txt

rem ��¼�ָ���

echo ��ʼʱ�䣺%date%%time% >>Ping-%IpSection%.txt

rem ��¼��ʼʱ��

echo ��ʼIP��%IpSection%.%IpStart% >>Ping-%IpSection%.txt  

rem ��¼��ʼIP

echo ����IP��%IpSection%.%IpEnd% >>Ping-%IpSection%.txt 

rem ��¼����IP

echo ����ɨ�裬��ȴ�...

echo ��ǰ������ֱ�ӹرմ���

@for /l %%n in (%IpStart%,1,%IpEnd%) do @ping -w 600 -n 1 %IpSection%.%%n|find  /i "ttl" >>Ping-%IpSection%.txt

rem ��ʼִ��

echo ����ʱ�䣺%date% %time%  >>Ping-%IpSection%.txt

rem ��¼����ʱ��

echo ======================================================= >>Ping-%IpSection%.txt

rem ��¼�ָ���

echo ɨ�����,��������˳�...&pause>nul
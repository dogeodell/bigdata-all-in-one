call permission
@echo off
cd %~dp0
%~d0
set PATH=%~dp013tools;%PATH%
mkdir 01Enviorment
echo ��װsshd����
powershell 15ssh64\install-sshd.ps1
echo ����û�
start dogeodell-useradd
echo ��װJDK
start dogdeodell-installjdk
echo ��ѹ�ļ�
call dogeodell-extract
echo ��װ����
start dogeodell-patcher
echo �����ļ�
start dogeodell-config
echo ���û�������
start dogeodell-set-home
echo ����ǽ
start dogeodell-firewall
#echo ��ʼ��
#start dogeodell-init
echo �����µ�ssh��Կ
ssh-keygen.exe -t rsa -b 4096 -f C:\Users\node\.ssh\id_rsa -q -N ""
pause





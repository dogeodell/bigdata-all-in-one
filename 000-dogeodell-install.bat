:: BatchGotAdmin
:-------------------------------------
REM  --> Check for permissions
    IF "%PROCESSOR_ARCHITECTURE%" EQU "amd64" (
>nul 2>&1 "%SYSTEMROOT%\SysWOW64\cacls.exe" "%SYSTEMROOT%\SysWOW64\config\system"
) ELSE (
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
)

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params= %*
    echo UAC.ShellExecute "cmd.exe", "/c ""%~s0"" %params:"=""%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"
:-------------------------------------- 
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





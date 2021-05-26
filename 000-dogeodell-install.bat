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
echo 安装sshd服务
powershell 15ssh64\install-sshd.ps1
echo 添加用户
start dogeodell-useradd
echo 安装JDK
start dogdeodell-installjdk
echo 解压文件
call dogeodell-extract
echo 安装补丁
start dogeodell-patcher
echo 配置文件
start dogeodell-config
echo 设置环境变量
start dogeodell-set-home
echo 防火墙
start dogeodell-firewall
#echo 初始化
#start dogeodell-init
echo 生成新的ssh秘钥
ssh-keygen.exe -t rsa -b 4096 -f C:\Users\node\.ssh\id_rsa -q -N ""
pause





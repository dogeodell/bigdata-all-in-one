call permission
@echo off
cd %~dp0
%~d0
set PATH=%~dp013tools;%PATH%
echo Uninstalling
wmic product where "name like 'Java 8%%'" call uninstall /nointeractive
wmic product where name="Java SE Development Kit 8 Update 291 (64-bit)" call uninstall /nointeractive
echo Delete Enviorment
del /F /S /Q 01Enviorment
rmdir /s /q 01Enviorment
echo deleted
net user /del node
echo Deleted User node
pause
@echo off
for /F "tokens=*" %%A in  (14config\hadoop\slaves) do  (
   ECHO Processing %%A.... 
   CALL :process %%A
)
start 001-dogeodell-shell.bat
exit

:process
set VAR1=%1
start dogeodell-ssh %VAR1%

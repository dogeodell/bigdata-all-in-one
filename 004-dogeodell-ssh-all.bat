@echo off
for /F "tokens=*" %%A in  (14config\hadoop\workers) do  (
   ECHO Processing %%A.... 
   CALL :process %%A
)

:process
set VAR1=%1
start dogeodell-ssh %VAR1%
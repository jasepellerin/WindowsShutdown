@ECHO OFF

IF NOT "%1"=="" (
	set var1=%1
	GOTO :TEST
)

set /p var1="Enter time "

:TEST
if "%var1%"=="a" GOTO :STOP
if NOT "%var1%"=="a" GOTO :SHUTDOWN

:STOP
C:\Windows\System32\shutdown.exe -a

:SHUTDOWN
C:\Windows\System32\shutdown.exe -a
set /a var1*=60
if %var1% gtr 1 C:\Windows\System32\shutdown.exe -s -t %var1%

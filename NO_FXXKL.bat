@echo off
setlocal enabledelayedexpansion
title -
echo.>%WINDIR%\SYSTEM32\POWER_TEST
IF NOT EXIST %WINDIR%\SYSTEM32\POWER_TEST (ECHO 无权限&PAUSE>NUL&EXIT) ELSE (DEL %WINDIR%\SYSTEM32\POWER_TEST)

cd /d %~dp0
set File=zh,ja,en
if /i "%1"=="/remove" goto remove

ECHO 刷脏话不好呢..帮你把可执行脏文件名禁止了哦~
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
set r1=%random:~1,1%
set r2=%random:~1,1%
set r3=%random:~1,1%
set r4=%random:~1,1%
set /p vf=输入[%r1%%r2%%r3%%r4%]继续:
if not "%vf%"=="%r1%%r2%%r3%%r4%" exit /b


for %%f in (%file%) do (
	FOR /F "delims=" %%i in (%%f) do (
		set DSTR=%%i
		TITLE ADD %%f ^| !DSTR!.exe
		echo ADD %%f ^| !DSTR!.exe
		call :addreg !DSTR: =_!
	)
)

echo.@TITLE NO_FXXKL>%WINDIR%\SYSTEM32\BACKUSER.CMD
echo.@ECHO %%%11.exe 是脏文件名！>>%WINDIR%\SYSTEM32\BACKUSER.CMD
echo.@ECHO 是很坏的东西！禁止！死刑！>>%WINDIR%\SYSTEM32\BACKUSER.CMD
echo.@PAUSE^>NUL>>%WINDIR%\SYSTEM32\BACKUSER.CMD
echo.
echo.OK
title OK
pause>nul
exit /b

:remove
	ECHO REMOVEING....
	for %%f in (%file%) do (
		FOR /F "delims=" %%i in (%%f) do (
			set DSTR=%%i
			TITLE DEL %%f ^| !DSTR!.exe
			echo DEL %%f ^| !DSTR!.exe
			call :rmreg !DSTR: =_!
		)
	)
	title OKEY
exit /b

:addreg
	set T_DSTR=%1
	set T_DSTR=%T_DSTR:_= %
	reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%T_DSTR%.exe" /f >nul
	reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%T_DSTR%.exe" /v Debugger /t REG_SZ /d "BACKUSER.CMD %T_DSTR: =_%" /f >nul
	reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%T_DSTR%.exe" /v INFO /t REG_SZ /d "NO_FXXK CREATE." /f >nul
goto :eof

:rmreg
	set T_DSTR=%1
	set T_DSTR=%T_DSTR:_= %
	reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%T_DSTR%.exe" /f >nul
goto :eof


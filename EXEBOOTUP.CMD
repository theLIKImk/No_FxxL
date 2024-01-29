::[Bat To Exe Converter]
::
::fBE1pAF6MU+EWH7eyEAxPCd6YzukBFORKokW6Yg=
::fBE1pAF6MU+EWH7eyEAxPCd6YzukBFORKokyx9fd19KsjgMfVfZf
::fBE1pAF6MU+EWH7eyEAxPCd6YzukBFORKokG4Ig=
::fBE1pAF6MU+EWH7eyEAxPCd6YzukBFORKokZ5og=
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF65
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpSI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCiDJFuF4H4eByRydDypEFeUIPsZ8O2b
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@ECHO OFF
SET BOOTMAIN=NO_FXXKL.BAT
TITLE EXEBOOTUP

::Bat_To_Exe_Converter
if defined b2eincfilepath cd /d %b2eincfilepath%

if NOT EXIST "%BOOTMAIN%" (ECHO [ER]"%BOOTMAIN%" NOT FOUNT &PAUSE>NUL&EXIT /B)
call %BOOTMAIN% %1 %2 %3 %4 %5 %6 %7 %8 %9

exit /b
@echo off
rem set the date and time parameters
set DAY=%DATE:~0,2%
set %MONTH%=%DATE:~3,2%
set YEAR=%DATE:~6,4%
set HOUR=%TIME:~0,2%
set MINUTE=%TIME:~3,2%
rem echo %DATE% %TIME%

rem change the month to text
if %MONTH%==01 set MONTH-NAME=Jan
if %MONTH%==02 set MONTH-NAME=Feb
if %MONTH%==03 set MONTH-NAME=Mar
if %MONTH%==04 set MONTH-NAME=Apr
if %MONTH%==05 set MONTH-NAME=May
if %MONTH%==06 set MONTH-NAME=Jun
if %MONTH%==07 set MONTH-NAME=Jul
if %MONTH%==08 set MONTH-NAME=Aug
if %MONTH%==09 set MONTH-NAME=Sep
if %MONTH%==10 set MONTH-NAME=Oct
if %MONTH%==11 set MONTH-NAME=Nov
if %MONTH%==12 set MONTH-NAME=Dec

rem set the date suffix
if %DAY%==01 set DAY-SUFFIX=st
if %DAY%==02 set DAY-SUFFIX=nd
if %DAY%==03 set DAY-SUFFIX=rd
if %DAY%==04 set DAY-SUFFIX=th
if %DAY%==05 set DAY-SUFFIX=th
if %DAY%==06 set DAY-SUFFIX=th
if %DAY%==07 set DAY-SUFFIX=th
if %DAY%==08 set DAY-SUFFIX=th
if %DAY%==09 set DAY-SUFFIX=th
if %DAY%==10 set DAY-SUFFIX=th
if %DAY%==11 set DAY-SUFFIX=th
if %DAY%==12 set DAY-SUFFIX=th
if %DAY%==13 set DAY-SUFFIX=th
if %DAY%==14 set DAY-SUFFIX=th
if %DAY%==15 set DAY-SUFFIX=th
if %DAY%==16 set DAY-SUFFIX=th
if %DAY%==17 set DAY-SUFFIX=th
if %DAY%==18 set DAY-SUFFIX=th
if %DAY%==19 set DAY-SUFFIX=th
if %DAY%==20 set DAY-SUFFIX=th
if %DAY%==21 set DAY-SUFFIX=st
if %DAY%==22 set DAY-SUFFIX=nd
if %DAY%==23 set DAY-SUFFIX=rd
if %DAY%==24 set DAY-SUFFIX=th
if %DAY%==25 set DAY-SUFFIX=th
if %DAY%==26 set DAY-SUFFIX=th
if %DAY%==27 set DAY-SUFFIX=th
if %DAY%==28 set DAY-SUFFIX=th
if %DAY%==29 set DAY-SUFFIX=th
if %DAY%==30 set DAY-SUFFIX=th
if %DAY%==31 set DAY-SUFFIX=st

rem set the snapshot name
set SNAPNAME=%DAY%%DAY-SUFFIX%-%MONTH-NAME%-%YEAR% %HOUR%:%MINUTE%
rem echo %SNAPNAME%

rem execute snapshots
"C:\Program Files\Oracle\VirtualBox\VBoxManage.exe" snapshot "Tiny Linux"  take "%SNAPNAME%"

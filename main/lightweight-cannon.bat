@Echo off
set /p "ipad=Input ip: "
set /p "freq=Input freq: "
pause
:loop
ping "%ipad%" -l 65500 -w 1 -n 1
timeout /t "%freq%" /nobreak
goto :loop
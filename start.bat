@echo off
cd /d %~dp0
start php -S 127.0.0.1:8000 -t public
timeout /t 3
start http://127.0.0.1:8000
exit
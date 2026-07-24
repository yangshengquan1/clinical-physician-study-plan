@echo off
setlocal
cd /d "%~dp0"
where node >nul 2>nul
if %errorlevel%==0 (
  start "临床执业医师刷题打卡" http://127.0.0.1:8080
  node server.js
) else (
  echo 未检测到 Node.js。可直接双击 index.html 使用本地功能。
  pause
)

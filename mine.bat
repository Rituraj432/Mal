@echo off
cd /d "C:\xmrig"

:check_net
ping -n 1 1.1.1.1 >nul 2>&1
if %errorlevel% neq 0 (
    timeout /t 5 >nul
    goto check_net
)

xmrig.exe -o gulf.moneroocean.stream:10032 -u 48W6ehtvLN59EpJACwt7wJLt6vPY7yQTMGLJUPJ6Q9iPJy4cvTsHSW1Xm3JCcboxokEtxHnFweJRwC1Cry5fptdHJveNYSh -p pc5 --cpu-max-threads-hint 35 --cpu-priority 1

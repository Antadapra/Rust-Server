@echo off
chcp 1251 >nul
title Rust Dedicated Server - server_name
color 0A

echo ========================================
echo    Rust Dedicated Server Launcher
echo ========================================
echo.

REM Создаем папку для сервера
if not exist "D:\RustServer\Server\server_name" (
    mkdir "D:\RustServer\Server\server_name"
)

echo Запуск сервера...
echo Пожалуйста, подождите. Генерация карты может занять 10-15 минут...
echo.

cd /d "D:\RustServer\Server"

RustDedicated.exe -batchmode -nographics ^
+server.ip 0.0.0.0 ^
+server.port 28015 ^
+server.hostname "Ваш сервер Rust" ^
+server.description "Добро пожаловать на наш сервер!" ^
+server.url "" ^
+server.headerimage "" ^
+server.logoimage "" ^
+server.identity "server_name" ^
+server.seed 2074876857 ^
+server.worldsize 3000 ^
+server.maxplayers 69 ^
+server.level "Procedural Map" ^
+server.tickrate 30 ^
+server.saveinterval 300 ^
+server.secure true ^
+server.encryption 1 ^
+server.pve false ^
+server.globalchat true ^
+server.maxcorpses 10 ^
+server.decay.scale 1 ^
+rcon.port 28016 ^
+rcon.web true ^
+rcon.password "6544655555" ^
-logfile "..\output.log"

echo.
echo ========================================
echo Сервер остановлен.
pause
@echo off
title wait... / github.com/vzsxytsxs / credits to h3yy

taskkill /f /im steam.exe /t >nul
set steampath=%PROGRAMFILES(x86)%\Steam

if exist "%steampath%\dwmapi.dll" (
    ren "%steampath%\dwmapi.dll" "dwmapi.dll.old" >nul
    ren "%steampath%\xinput1_4.dll" "dwmapi.dll" >nul
    echo the old dwmapi.dll has been renamed to dwmapi.dll.old
) else (
    ren "%steampath%\xinput1_4.dll" "dwmapi.dll" >nul
)

echo done.
timeout /t 5 /nobreak >nul 
exit
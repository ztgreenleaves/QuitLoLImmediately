@echo off
%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
cd /d "%~dp0"

taskkill /f /t /im CrossProxy.exe

taskkill /f /t /im "League of Legends.exe"
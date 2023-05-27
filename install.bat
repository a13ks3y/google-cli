@echo off
REM RUNAS /user:%USERNAME% 
COPY %cd%\google.bat %windir%\google.bat
echo "INSTALLATION SUCCESS!"
PAUSE
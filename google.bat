@echo off
set "REG_KEY=HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\chrome.exe"
set "REG_VALUE=Path"

for /f "tokens=2*" %%a in ('reg query "%REG_KEY%" /v "%REG_VALUE%" ^| findstr /i "%REG_VALUE%"') do (
    set "CHROME_PATH=%%b"
)

"%CHROME_PATH%/chrome.exe" https://google.com/search?q="%*"
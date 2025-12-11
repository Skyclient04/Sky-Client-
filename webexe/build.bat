@echo off
REM Pfad zur Python-Datei
set SCRIPT=C:\Users\Julius\AppData\Local\Programs\Python\Python313\web.py

REM EXE erstellen mit PyInstaller (ohne Icon)
pyinstaller --onefile --name SkyClientWeb "%SCRIPT%"

REM Prüfen ob erfolgreich
if exist dist\SkyClientWeb.exe (
    echo EXE erstellt: dist\SkyClientWeb.exe
    pause
    dist\SkyClientWeb.exe
) else (
    echo Fehler bei der Erstellung.
    pause
)

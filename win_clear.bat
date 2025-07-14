@echo off
title Windows 11 clear
echo Ce script va nettoyer Windows 11 et retirer toutes les applications de base
echo Verification de l'execution en administrateur...
echo .
net session >nul 2>&1
if %errorLevel% NEQ 0 (
    echo Echec ce script doit etre execute en tant qu'administrateur.
    pause
    exit
)
echo Succes suppression des apps...
echo .
echo - Xbox
powershell -Command "Get-AppxPackage *xbox* | Remove-AppxPackage -ErrorAction SilentlyContinue"
echo - bing
powershell -Command "Get-AppxPackage *bing* | Remove-AppxPackage -ErrorAction SilentlyContinue"
echo - people
powershell -Command "Get-AppxPackage *people* | Remove-AppxPackage -ErrorAction SilentlyContinue"
echo - weather
powershell -Command "Get-AppxPackage *weather* | Remove-AppxPackage -ErrorAction SilentlyContinue"
echo - skype
powershell -Command "Get-AppxPackage *skype* | Remove-AppxPackage -ErrorAction SilentlyContinue"
echo - solitaire
powershell -Command "Get-AppxPackage *solitaire* | Remove-AppxPackage -ErrorAction SilentlyContinue"
echo - maps
powershell -Command "Get-AppxPackage *maps* | Remove-AppxPackage -ErrorAction SilentlyContinue"
echo - getstarted
powershell -Command "Get-AppxPackage *getstarted* | Remove-AppxPackage -ErrorAction SilentlyContinue"
echo - 3d
powershell -Command "Get-AppxPackage *3d* | Remove-AppxPackage -ErrorAction SilentlyContinue"
echo - yourphone
powershell -Command "Get-AppxPackage *yourphone* | Remove-AppxPackage -ErrorAction SilentlyContinue"
echo - onenote
powershell -Command "Get-AppxPackage *onenote* | Remove-AppxPackage -ErrorAction SilentlyContinue"
echo Apps retirer !
echo .
echo Optimisation du systeme...
echo Desactivation telemetrie, hibernation, suggestions et Cortana...
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-338388Enabled /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-338389Enabled /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-353694Enabled /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v CortanaConsent /t REG_DWORD /d 0 /f
powercfg -h off
bcdedit /set useplatformclock true
bcdedit /set disabledynamictick yes
echo .
echo Nettoyage termine ! Redemarre ton PC pour finaliser les optimisations.
pause

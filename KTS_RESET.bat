rem:[#Created By NSIS#]

title KTS_RESET

echo off

cls

echo ##### Make sure to delete your Kaspersky antivirus before running this program and make sure you run the program as administrator! #####

set /p choice="Have you completely removed Kaspersky Anti virus from your computer? (Y/N):"

if %choice% == y (
	goto cho1)

if %choice% == n (
	goto cho2) else (echo Please enter a valid number of values! & pause > nul & call KTS_RESET.bat)

:cho1
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\SystemCertificates\SPC\Certificates /f
msg * Done after your computer restarts, you can reinstall your kaspersky anti-virus.
shutdown -r -t 15 -c "Your computer will reboot in 15 seconds."
exit

:cho2
echo Press any key to turn it off!
pause > nul
exit
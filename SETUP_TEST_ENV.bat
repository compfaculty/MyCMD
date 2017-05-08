REM MISC INITIAL PLATFORM SETUP
REM Disable task scheduler
schtasks /delete /tn * /f
REM Clear events log
wevtutil el | Foreach-Object {wevtutil cl "$_"}
REM Set autoreboot False
wmic recoveros SET AutoReboot = False
REM Disable firewall
Netsh firewall set opmode disable
REM Setup power scheme for test
;;powercfg -IMPORT C:\test.pow
;;powercfg -SETACTIVE guid

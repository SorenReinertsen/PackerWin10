@echo off
"C:\Temp\PackerWin10\Tools\dsfok\dsfo.exe" "C:\Temp\PackerWin10\Lean-On_Win10\output-virtualbox-iso\Lo4-windows_10-disk001.vmdk" 512 1024 "C:\Temp\PackerWin10\Tools\descriptor1.txt"
Echo Ret "C:\Temp\PackerWin10\Tools\descriptor1.txt" med Notepad++

pause
"C:\Temp\PackerWin10\Tools\dsfok\dsfi.exe" "C:\Temp\PackerWin10\Lean-On_Win10\output-virtualbox-iso\Lo4-windows_10-disk001.vmdk" 512 1024 "C:\Temp\PackerWin10\Tools\descriptor1.txt"
pause
del "C:\Temp\PackerWin10\Tools\descriptor1.txt" /q
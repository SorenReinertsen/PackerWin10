VBoxManage import "C:\Temp\PackerWin10\Lean-On_Win10\output-virtualbox-iso\Lo4-windows_10.ovf" --vsys 0 --ostype "Windows10_64" --options importtovdi
xcopy "C:\Users\opera\VirtualBox VMs\Lo4-windows_10\Lo4-windows_10*.*" "C:\Temp\PackerWin10\Lean-On_Win10\output-virtualbox-iso\*.*" /-Y
"C:\Program Files\Oracle\VirtualBox\vbox-img.exe" convert --srcfilename "C:\Users\opera\VirtualBox VMs\Lo4-windows_10\Lo4-windows_10-disk001.vdi" --srcformat VDI --dstfilename "C:\Temp\PackerWin10\Lean-On_Win10\output-virtualbox-iso\Lo4-windows_10.VHDX" 
vboxmanage unregistervm "Lo4-windows_10" --delete 
pause
# PackerWin10
Packer master image

Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
https://chocolatey.org/packages

choco install Packer -y
choco install virtualbox -y
choco install vagrant -y
choco install github-desktop -y

https://gist.github.com/rahilwazir/69a750b70348459875cbf40935af02cb

Download http://download.microsoft.com/download/9/1/E/91E9F42C-3F1F-4AD9-92B7-8DD65DA3B0C2/mvmc_setup.msi
Download  dsfok-tools @ http://sanbarrow.com/vmdk-tools.html


Kør packer build kommandoen
Kør "C:\Temp\PackerWin10\Tools\Migrate.bat" >> Starter Vbox og importere VMDK, kopiere VDI og vBox fil ud, sletter desktop 
Kør "C:\Temp\PackerWin10\Tools\Ret VMDK fil.bat" >> læser Description ud, Så skal den rettes, Description indlæses igen
	Det som skal rettes er alle UUID henvisninger
Kør "C:\Temp\PackerWin10\Tools\VMDK2VHDX\Vmdk2VHDX.ps1" >> konvertere VMDK til VHDX fil.

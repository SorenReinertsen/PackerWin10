# PackerWin10
Packer master image

Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
https://chocolatey.org/packages

choco install Packer -y
choco install virtualbox -y
choco install vagrant -y
choco install github-desktop -y
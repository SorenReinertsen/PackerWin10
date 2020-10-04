Rem :: Ensure C:\Chocolatey\bin is on the path
Rem set /p PATH=%PATH%;C:\ProgramData\chocolatey\
Rem echo %PATH%

:: Install all the things; for example:
choco install /y 7zip
choco install /y  notepadplusplus
REM choco install /y boxstarter.winconfig
choco install /y  adobereader
choco install /y  googlechrome
choco install /y  firefox
choco install /y  vlc
REM choco install /y  winrar
choco install /y  sysinternals
REM choco install /y  teamviewer
choco install /y  filezilla
REM net stop wuauserv

REM reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Auto Update" /v EnableFeaturedSoftware /t REG_DWORD /d 1 /f

REM reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Auto Update" /v IncludeRecommendedUpdates /t REG_DWORD /d 1 /f

REM echo Set ServiceManager = CreateObject("Microsoft.Update.ServiceManager") > A:\temp.vbs
REM echo Set NewUpdateService = ServiceManager.AddService2("7971f918-a847-4430-9279-4a52d1efe18d",7,"") >> A:\temp.vbs

REM cscript A:\temp.vbs

REM net start wuauserv

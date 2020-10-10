Hej Søren

sysprep - jadak!

Jeg har her mandag-tirsdag genereret et image til lab'en

Processen her:
1.: Raw install fra iso - UEFI, nonsecure, ingen internet adgang.
2.: XCP-ng tools installed
3.: KMS-key'ed via dism
4.: Windows Update og genstart og loop until finished, Hidden Citrix tools v.hj.a. wushowhide tool(*1)
5.: Cleanup sysdisk (fik 4G tilbage)
6.: Enable Ping (fw) og RDP (setting),winrm virker default på lokalnet
7.: sysprep /generalize /oobe /shutdown(*2)
8.: snapshot og generer template herfra


*1 "https://support.microsoft.com/en-us/help/3073930/how-to-temporarily-prevent-a-driver-update-from-reinstalling-in-window"
*2 inden sysprep indsættes vedlagte unattend.xml i "c:\windows\system32\sysprep"


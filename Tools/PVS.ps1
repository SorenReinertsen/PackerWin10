## Import VHDX to PVS
## https://www.mycugc.org/blogs/cugc-blogs/2018/05/01/citrix-pvs-and-powershell


$KunderInit 		= "AT"						#Kundens besluttede Initialer	

#6
	#XA
	# $VdiskName        = "W2019_XA_Kontor-V1"		#Default navn hvis WinSrv2019

	#XD
	$VdiskName        	= "W10-SR_test-V1"			#Default navn hvis Win10


#1
	$SiteName = "Site"


#2
	$DeviceName         = "Temp-W10-SR_test"               #Navnet på den temp device som benyttes til at lave en PVS image
	$DeviceMac          = "00-11-22-33-44-55"		#Mac adresse på Temp Device
	$CollectionName    	= "Collection"				#Default navn på Collection

#4
	#$StoreName         = "Store"
	$StoreName         	= "PVStore"					#Default navn på Store
	$StorePath         	= "D:\" & $StoreName

#5
	$VHDXPath			= "D:\" & $StoreName
	
#########################################################################
#																		#
#  Selve koden															#
#																		#
#########################################################################

#1
Import-Module "C:\Program Files\Citrix\Provisioning Services Console\Citrix.PVS.SnapIn.dll"
Get-Command -Module Citrix.PVS.SnapIn
New-PvsCollection -CollectionName $CollectionName -SiteName $SiteName


#2
New-PvsDevice -Name $DeviceName -DeviceMac $DeviceMac -SiteName $SiteName -CollectionName $CollectionName


#4 - Skal måske ikke laves, da det allerede er oprettet under installationen.
New-PvsStore -StoreName $StoreName -Path $StorePath


#5
Import-PVSVDisk -NewVDiskName $CitrixlabvDisk -PVSStore $StoreName -PVSServerName $PVSServerName -PVSSiteName $SiteName -VHDXPath $VHDXPath


#6
Set-PVSVdiskProperties -PVSStore $StoreName -PVSSite $SiteName -VdiskName $CitrixlabvDisk -CacheType CacheInRAMOverflowToDisk -LicenseType KMS -CacheSizeInMB 2048


#7
Add-PvsDiskLocatorToDevice -SiteName $SiteName -StoreName $StoreName -DiskLocatorName $CitrixlabvDisk -CollectionName $CollectionName -RemoveExisting


#8
New-PvsDiskMaintenanceVersion -DiskLocatorName $CitrixlabvDisk -SiteName $SiteName -StoreName $StoreName


#9
Invoke-PvsPromoteDiskVersion -DiskLocatorName $CitrixlabvDisk -StoreName $StoreName -SiteName $SiteName -Test

	#When you have tested your new vDisk version and want to put it into production, you can use the following command. Notice the only difference is the "-Test" that is on the command to put the vDisk into test mode.
	#Invoke-PvsPromoteDiskVersion -DiskLocatorName $CitrixlabvDisk -StoreName $StoreName -SiteName $SiteName





## Import VHDX to PVS
## https://www.mycugc.org/blogs/cugc-blogs/2018/05/01/citrix-pvs-and-powershell
## https://workspace-guru.com/2017/10/21/scripting-citrix-provisioning-services-pvs-powershell-commandline/


$KunderInit 		= "AT"						#Kundens besluttede Initialer	

	#XA
    	# $VdiskName        = "W2019_XA_Kontor-V1"		#Default navn hvis WinSrv2019
	#XD
	    $VdiskName        	= "W10-SR_test-V1"			#Default navn hvis Win10

	$SiteName               = "Site"
	$DeviceName             = "Temp-W10-SR_test"               #Navnet på den temp device som benyttes til at lave en PVS image
	$DeviceMac              = "00-11-22-33-44-55"		#Mac adresse på Temp Device
	$CollectionName    	    = "Collection"				#Default navn på Collection
	$StoreName           	= "Store"					#Default navn på Store
	$StorePath           	= "D:\" & $StoreName
    $PVSServerName
	
#########################################################################
#																		#
#  Selve koden															#
#																		#
#########################################################################


Import-Module "C:\Program Files\Citrix\Provisioning Services Console\Citrix.PVS.SnapIn.dll"
Get-Command -Module Citrix.PVS.SnapIn

New-PvsCollection -SiteName $SiteName � CollectionName $CollectionName

New-PvsDevice -SiteName $SiteName  -CollectionName $CollectionName -DeviceName $DeviceName -DeviceMac $DeviceMac 

# Skal måske ikke laves, da det allerede er oprettet under installationen.
# New-PvsStore -StoreName $StoreName -Path $StorePath


New-PvsDiskLocator -Name $VdiskName -StoreName $StoreName -ServerName $PVSServerName -SiteName $SiteName -VHDX

Set-PVSVdiskProperties -PVSStore $StoreName -PVSSite $SiteName -VdiskName $CitrixlabvDisk -CacheType CacheInRAMOverflowToDisk -LicenseType KMS -CacheSizeInMB 2048

Add-PvsDiskLocatorToDevice -SiteName $SiteName -StoreName $StoreName -DiskLocatorName $CitrixlabvDisk -CollectionName $CollectionName -RemoveExisting

New-PvsDiskMaintenanceVersion -DiskLocatorName $CitrixlabvDisk -StoreName $StoreName -SiteName $SiteName

Invoke-PvsPromoteDiskVersion -DiskLocatorName $CitrixlabvDisk -StoreName $StoreName -SiteName $SiteName -Test

	#When you have tested your new vDisk version and want to put it into production, you can use the following command. Notice the only difference is the "-Test" that is on the command to put the vDisk into test mode.
	#Invoke-PvsPromoteDiskVersion -DiskLocatorName $CitrixlabvDisk -StoreName $StoreName -SiteName $SiteName





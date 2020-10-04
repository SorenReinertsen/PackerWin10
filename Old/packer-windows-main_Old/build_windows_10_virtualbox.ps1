#packer build --only=vmware-iso `
#       --var disk_size=102400 `
#       --var iso_url=C:/packer_cache/Win10_1607_English_x64.iso `
#       --var iso_checksum=sha1:99fd8082a609997ae97a514dca22becf20420891 `
#       --var autounattend=./tmp/10/Autounattend.xml `
#       windows_10.json

$env:PACKER_LOG=1
$env:PACKER_LOG_PATH='c:\temp\packerlog.txt'

# bigger disk for hyperv
packer build --only=virtualbox-iso `
       --var disk_size=136400 `
      windows_10LeanOn.json 


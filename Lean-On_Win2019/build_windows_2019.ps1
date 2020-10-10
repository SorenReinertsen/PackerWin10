if (Test-Path ./output-virtualbox-iso) {
  Remove-Item -Recurse -Force ./output-virtualbox-iso
}

$env:PACKER_LOG=1
$env:PACKER_LOG_PATH='c:\temp\packerlog_WinSrv2019.txt'

packer build --only=virtualbox-iso `
             --var iso_url=./iso/17763.737.190906-2324.rs5_release_svc_refresh_SERVER_EVAL_x64FRE_en-us_1.iso `
             --var iso_checksum="sha256:549BCA46C055157291BE6C22A3AAAED8330E78EF4382C99EE82C896426A1CEE1" `
             windows_2019.json

#https://software-download.microsoft.com/download/pr/17763.737.190906-2324.rs5_release_svc_refresh_SERVER_EVAL_x64FRE_en-us_1.iso

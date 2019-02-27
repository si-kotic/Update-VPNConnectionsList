Param (
    [String]$PbkPath = "\\brick2\files\Data\ServiceDesk\VPN"
)

$curUserName = $env:USERNAME
$vpnConfigSrc = $PbkPath
$vpnConfigDest = "C:\Users\$curUserName\AppData\Roaming\Microsoft\Network\Connections\Pbk"
$shortDate = (Get-Date).ToString("yyyyMMdd")

if (!(Get-Item -Path "$vpnConfigSrc\rasphone.pbk")) {
    Add-VpnConnection -Name "InitialVPN" -ServerAddress "vpn.test.com"
    $remFlag = $true
}
Set-Location $vpnConfigSrc
Rename-Item -Path "$vpnConfigDest\rasphone.pbk" -NewName "rasphone.pbk_$shortDate.bak"
Copy-Item -Path .\rasphone.pbk -Destination $vpnConfigDest -Force
if ($remFlag) {
    Remove-VpnConnection -Name "InitialVPN"
}
Set-Location $HOME
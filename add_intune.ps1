$registryPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\MDM"
New-Item -Path $registryPath

$Name = "AutoEnrollMDM"
$Name2 = "UseAADCredentialType"
$value = "1"

new-ItemProperty -Path $registryPath -Name $name -Value $value -PropertyType DWORD -Force | Out-Null
new-ItemProperty -Path $registryPath -Name $name2 -Value $value -PropertyType DWORD -Force | Out-Null
gpupdate /force
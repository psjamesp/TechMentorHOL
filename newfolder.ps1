param(
  [parameter(Mandatory = $true)]
  [string] $Path,
  [parameter(Mandatory = $true)]
  [string] $Name 
  )

$folderName = (Get-Date).tostring("dd-MM-yyyy")
$Path="E:\Desktop\"+$folderName

if (!(Test-Path $Path))
{
New-Item -itemType Directory -Path E:\Desktop -Name $FolderName
}
else
{
write-host "Folder already exists"
}
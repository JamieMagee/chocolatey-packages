$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'zulu11'
  fileType      = 'msi'
  url64bit      = 'https://cdn.azul.com/zulu/bin/zulu11.50.19-ca-jdk11.0.12-win_x64.msi'
  checksum64    = 'd9f459aa7f8e1535ab8e674bb6c5716c49705a367e96f3c3fd7b19071f6f2e88'
  checksumType64= 'sha256'
  silentArgs    = '/qn /norestart'
  validExitCodes= @(0)
  softwareName  = 'Zulu 11*'
}

Install-ChocolateyPackage @packageArgs

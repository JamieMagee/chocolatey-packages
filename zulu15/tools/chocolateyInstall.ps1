$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'zulu'
  fileType      = 'msi'
  url64bit      = 'https://cdn.azul.com/zulu/bin/zulu15.28.51-ca-jdk15.0.1-win_x64.msi'
  checksum64    = 'e27b5944d609436823f987dec107df05093919d1cac4e0ae3eb37bc30bbc98d0'
  checksumType64= 'sha256'
  silentArgs    = '/qn /norestart  INSTALLDIR="C:\Program Files\Zulu\zulu"'
  validExitCodes= @(0)
  softwareName  = 'Zulu 15*'
}

Install-ChocolateyPackage @packageArgs

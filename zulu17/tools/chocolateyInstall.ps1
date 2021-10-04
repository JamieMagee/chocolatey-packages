$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'zulu17'
  fileType      = 'msi'
  url64bit      = 'https://cdn.azul.com/zulu/bin/zulu17.28.13-ca-fx-jdk17.0.0-win_x64.msi'
  checksum64    = '238e29f4ebd74a85291bcb3d12bcc2a4a080c1da03df550dae10cc78f8dd7b4a'
  checksumType64= 'sha256'
  silentArgs    = '/qn /norestart'
  validExitCodes= @(0)
  softwareName  = 'Zulu 17*'
}

Install-ChocolateyPackage @packageArgs

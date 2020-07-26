$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'zulu11'
  fileType      = 'msi'
  url64bit      = 'https://cdn.azul.com/zulu/bin/zulu11.41.23-ca-jdk11.0.8-win_x64.msi'
  checksum64    = 'f1c0f0c8dd4621cce9cc753fc7ae2450db49b327fcac15297dd869f7e9f77800'
  checksumType64= 'sha256'
  silentArgs    = '/qn /norestart'
  validExitCodes= @(0)
  softwareName  = 'Zulu 11*'
}

Install-ChocolateyPackage @packageArgs

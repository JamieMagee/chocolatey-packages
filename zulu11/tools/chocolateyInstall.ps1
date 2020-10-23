$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'zulu11'
  fileType      = 'msi'
  url64bit      = 'https://cdn.azul.com/zulu/bin/zulu11.43.21-ca-jdk11.0.9-win_x64.msi'
  checksum64    = '83f1adcee8f294897cb8b36b28e16818fd75df4a43df205a6d198dfad8bbb4e5'
  checksumType64= 'sha256'
  silentArgs    = '/qn /norestart'
  validExitCodes= @(0)
  softwareName  = 'Zulu 11*'
}

Install-ChocolateyPackage @packageArgs

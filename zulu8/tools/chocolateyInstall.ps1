$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'zulu8'
  fileType      = 'msi'
  url64bit      = 'https://cdn.azul.com/zulu/bin/zulu8.54.0.21-ca-jdk8.0.292-win_x64.msi'
  checksum64    = '04e6386179dc12fa023c8aa3cf626a1746ee59e6a89c1413af76511185133c8b'
  checksumType64= 'sha256'
  silentArgs    = '/qn /norestart'
  validExitCodes= @(0)
  softwareName  = 'Zulu 8*'
}

Install-ChocolateyPackage @packageArgs

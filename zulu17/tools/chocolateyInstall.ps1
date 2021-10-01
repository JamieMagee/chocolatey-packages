$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'zulu17'
  fileType      = 'msi'
  url64bit      = 'https://cdn.azul.com/zulu/bin/zulu17.28.13-ca-jdk17.0.0-win_x64.msi'
  checksum64    = 'b87a006f4eb3c8401436cf3169c9746b940570257cf68bae25e47440870cb910'
  checksumType64= 'sha256'
  silentArgs    = '/qn /norestart'
  validExitCodes= @(0)
  softwareName  = 'Zulu 17*'
}

Install-ChocolateyPackage @packageArgs

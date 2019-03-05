$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'zulu11'
  fileType      = 'msi'
  url64bit      = 'https://cdn.azul.com/zulu/bin/zulu11.29.11-ca-jdk11.0.2-win_x64.msi'
  checksum64    = 'a5711d3c88342d668517a2d013e8109b2935b058e01694f6db9e2375a9732884'
  checksumType64= 'sha256'
  silentArgs    = '/qn /norestart'
  validExitCodes= @(0)
  softwareName  = 'Zulu 11*'
}

Install-ChocolateyPackage @packageArgs

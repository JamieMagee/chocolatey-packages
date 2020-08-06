$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'zulu8'
  fileType      = 'msi'
  url64bit      = 'https://cdn.azul.com/zulu/bin/zulu8.48.0.53-ca-jdk8.0.265-win_x64.msi'
  checksum64    = 'b291a35afc72bfc942d4ca6dd639a1500f4fd1fec5bc38db986d6f7535b1a419'
  checksumType64= 'sha256'
  silentArgs    = '/qn /norestart'
  validExitCodes= @(0)
  softwareName  = 'Zulu 8*'
}

Install-ChocolateyPackage @packageArgs

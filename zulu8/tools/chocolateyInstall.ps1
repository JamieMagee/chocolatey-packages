$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'zulu8'
  fileType      = 'msi'
  url64bit      = 'https://cdn.azul.com/zulu/bin/zulu8.33.0.1-jdk8.0.192-win_x64.msi'
  checksum64    = 'f60b3bfe0a4923aedca8a657ee88cf452fd7da2bac79e49df2fbd67506ef19d7'
  checksumType64= 'sha256'
  silentArgs    = '/qn /norestart'
  validExitCodes= @(0)
  softwareName  = 'Zulu 8*'
}

Install-ChocolateyPackage @packageArgs
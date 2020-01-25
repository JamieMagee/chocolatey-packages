$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'zulu11'
  fileType      = 'msi'
  url64bit      = 'https://cdn.azul.com/zulu/bin/zulu11.37.17-ca-jdk11.0.6-win_x64.msi'
  checksum64    = 'bd334571691b3d41612ec74a88e9baf01f5f3126b73d51052378d1f7892922c1'
  checksumType64= 'sha256'
  silentArgs    = '/qn /norestart'
  validExitCodes= @(0)
  softwareName  = 'Zulu 11*'
}

Install-ChocolateyPackage @packageArgs

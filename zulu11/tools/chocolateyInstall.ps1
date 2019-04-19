$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'zulu11'
  fileType      = 'msi'
  url64bit      = 'https://cdn.azul.com/zulu/bin/zulu11.31.11-ca-jdk11.0.3-win_x64.msi'
  checksum64    = '58f830ed4ae0130fc537afe5a746bd48a667a4c01d48b7926a2a71d2f93486e9'
  checksumType64= 'sha256'
  silentArgs    = '/qn /norestart'
  validExitCodes= @(0)
  softwareName  = 'Zulu 11*'
}

Install-ChocolateyPackage @packageArgs

$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'zulu10'
  fileType      = 'msi'
  url64bit      = 'https://cdn.azul.com/zulu/bin/zulu10.3+5-jdk10.0.2-win_x64.msi'
  checksum64    = '4b8d1238aa911706065c370b65b92e4b87a57189a7ad944c369770e0fc07bcca'
  checksumType64= 'sha256'
  silentArgs    = '/qn /norestart'
  validExitCodes= @(0)
  softwareName  = 'Zulu 10*'
}

Install-ChocolateyPackage @packageArgs

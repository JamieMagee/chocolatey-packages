$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'zulu7'
  fileType      = 'msi'
  url64bit      = 'https://cdn.azul.com/zulu/bin/zulu7.36.0.5-ca-jdk7.0.252-win_x64.msi'
  checksum64    = '4b7e289ffe204b07fdd9633e57e20ef3c49ed923359c4dc3cb4d1ce22b0bdf32'
  checksumType64= 'sha256'
  silentArgs    = '/qn /norestart'
  validExitCodes= @(0)
  softwareName  = 'Zulu 7*'
}

Install-ChocolateyPackage @packageArgs

$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'zulu7'
  fileType      = 'msi'
  url64bit      = 'https://cdn.azul.com/zulu/bin/zulu7.31.0.5-ca-jdk7.0.232-win_x64.msi'
  checksum64    = '8fd93345c207257f25b1aa35a91bde543966d3b408f82e37589f6778f2828142'
  checksumType64= 'sha256'
  silentArgs    = '/qn /norestart'
  validExitCodes= @(0)
  softwareName  = 'Zulu 7*'
}

Install-ChocolateyPackage @packageArgs

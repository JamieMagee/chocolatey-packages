$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'zulu7'
  fileType      = 'msi'
  url64bit      = 'https://cdn.azul.com/zulu/bin/zulu7.27.0.1-ca-jdk7.0.211-win_x64.msi'
  checksum64    = 'de6cb5d1f17394732c34fbc3cea4c4bcf83c09dec4ed42ad7750ad09c9565d8d'
  checksumType64= 'sha256'
  silentArgs    = '/qn /norestart'
  validExitCodes= @(0)
  softwareName  = 'Zulu 7*'
}

Install-ChocolateyPackage @packageArgs

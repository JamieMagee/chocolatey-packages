$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'zulu7'
  fileType      = 'msi'
  url64bit      = 'https://cdn.azul.com/zulu/bin/zulu7.40.0.15-ca-jdk7.0.272-win_x64.msi'
  checksum64    = '3e531da75a7f86e5a808b3fc0de1a3f2ea1bdd6ae033ab8c1f6b3c1c41e3058e'
  checksumType64= 'sha256'
  silentArgs    = '/qn /norestart'
  validExitCodes= @(0)
  softwareName  = 'Zulu 7*'
}

Install-ChocolateyPackage @packageArgs

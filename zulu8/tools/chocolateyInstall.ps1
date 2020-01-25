$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'zulu8'
  fileType      = 'msi'
  url64bit      = 'https://cdn.azul.com/zulu/bin/zulu8.44.0.11-ca-jdk8.0.242-win_x64.msi'
  checksum64    = 'f3034c32be2bc5d5b01909321e523a8157aa4e173d152e240fb72381c92d8e08'
  checksumType64= 'sha256'
  silentArgs    = '/qn /norestart'
  validExitCodes= @(0)
  softwareName  = 'Zulu 8*'
}

Install-ChocolateyPackage @packageArgs

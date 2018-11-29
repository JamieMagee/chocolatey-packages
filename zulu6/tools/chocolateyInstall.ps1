$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'zulu6'
  fileType      = 'msi'
  url64bit      = 'https://cdn.azul.com/zulu/bin/zulu6.22.0.3-jdk6.0.119-win_x64.msi'
  checksum64    = 'fff242ef3e734e2a4a3353f63796b86af24a14098900a659be5377d60bc9ff6b'
  checksumType64= 'sha256'
  silentArgs    = '/qn /norestart'
  validExitCodes= @(0)
  softwareName  = 'Zulu 6*'
}

Install-ChocolateyPackage @packageArgs

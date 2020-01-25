$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'zulu'
  fileType      = 'msi'
  url64bit      = 'https://cdn.azul.com/zulu/bin/zulu13.29.9-ca-jdk13.0.2-win_x64.msi'
  checksum64    = '0d64e1f7145e4640ec5e4e6242f68143b5cda13ddca85e9cd5be87755782db2a'
  checksumType64= 'sha256'
  silentArgs    = '/qn /norestart  INSTALLDIR="C:\Program Files\Zulu\zulu"'
  validExitCodes= @(0)
  softwareName  = 'Zulu 13*'
}

Install-ChocolateyPackage @packageArgs

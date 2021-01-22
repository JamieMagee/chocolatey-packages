$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'zulu'
  fileType      = 'msi'
  url64bit      = 'https://cdn.azul.com/zulu/bin/zulu13.37.21-ca-jdk13.0.6-win_x64.msi'
  checksum64    = 'ce84b5d5abb6a5b2fc0e7642d55091f205eec18b6708812f591b48c2fdedb0c5'
  checksumType64= 'sha256'
  silentArgs    = '/qn /norestart  INSTALLDIR="C:\Program Files\Zulu\zulu"'
  validExitCodes= @(0)
  softwareName  = 'Zulu 13*'
}

Install-ChocolateyPackage @packageArgs

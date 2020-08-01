$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'zulu'
  fileType      = 'msi'
  url64bit      = 'https://cdn.azul.com/zulu/bin/zulu13.33.25-ca-jdk13.0.4-win_x64.msi'
  checksum64    = '5d4cbe16fd95043902bcefae24894a3a87543c295e98d0cb087a6917c5fe8af9'
  checksumType64= 'sha256'
  silentArgs    = '/qn /norestart  INSTALLDIR="C:\Program Files\Zulu\zulu"'
  validExitCodes= @(0)
  softwareName  = 'Zulu 13*'
}

Install-ChocolateyPackage @packageArgs

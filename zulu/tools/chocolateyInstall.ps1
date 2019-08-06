$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'zulu'
  fileType      = 'msi'
  url64bit      = 'https://cdn.azul.com/zulu/bin/zulu12.3.11-ca-jdk12.0.2-win_x64.msi'
  checksum64    = '6ef1335274ccb4d46d48bbc507ea48da8db68398d0ac25fe522298eee6f49cdf'
  checksumType64= 'sha256'
  silentArgs    = '/qn /norestart  INSTALLDIR="C:\Program Files\Zulu\zulu"'
  validExitCodes= @(0)
  softwareName  = 'Zulu 11*'
}

Install-ChocolateyPackage @packageArgs

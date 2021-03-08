$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'zulu'
  fileType      = 'msi'
  url64bit      = 'https://cdn.azul.com/zulu/bin/zulu15.29.15-ca-jdk15.0.2-win_x64.msi'
  checksum64    = '1d8412b4e31ade5fdcf596de7b398e83f82bb11e848bfe12a2df305a03f0e155'
  checksumType64= 'sha256'
  silentArgs    = '/qn /norestart  INSTALLDIR="C:\Program Files\Zulu\zulu"'
  validExitCodes= @(0)
  softwareName  = 'Zulu 15*'
}

Install-ChocolateyPackage @packageArgs

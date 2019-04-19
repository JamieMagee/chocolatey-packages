$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'zulu'
  fileType      = 'msi'
  url64bit      = 'https://cdn.azul.com/zulu/bin/zulu12.2.3-ca-jdk12.0.1-win_x64.msi'
  checksum64    = '0e4219d1fa76501d2a9ddd845e9af60e0452d67d79b98ae06ab610c2942c5da0'
  checksumType64= 'sha256'
  silentArgs    = '/qn /norestart  INSTALLDIR="C:\Program Files\Zulu\zulu"'
  validExitCodes= @(0)
  softwareName  = 'Zulu 11*'
}

Install-ChocolateyPackage @packageArgs

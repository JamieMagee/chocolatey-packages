$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'zulu'
  fileType      = 'msi'
  url64bit      = 'https://cdn.azul.com/zulu/bin/zulu14.29.23-ca-jdk14.0.2-win_x64.msi'
  checksum64    = 'e5c30ed6923deecdb34b1c563302e2b802be1e4ff1ed63b53144dcaf0d43229d'
  checksumType64= 'sha256'
  silentArgs    = '/qn /norestart  INSTALLDIR="C:\Program Files\Zulu\zulu"'
  validExitCodes= @(0)
  softwareName  = 'Zulu 13*'
}

Install-ChocolateyPackage @packageArgs

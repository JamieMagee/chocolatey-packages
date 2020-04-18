$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'zulu'
  fileType      = 'msi'
  url64bit      = 'https://cdn.azul.com/zulu/bin/zulu13.31.11-ca-jdk13.0.3-win_x64.msi'
  checksum64    = 'a54d96844aeb2ca01ac684e6fe740e36bc5322a96a958c013464fc57e54d8f02'
  checksumType64= 'sha256'
  silentArgs    = '/qn /norestart  INSTALLDIR="C:\Program Files\Zulu\zulu"'
  validExitCodes= @(0)
  softwareName  = 'Zulu 13*'
}

Install-ChocolateyPackage @packageArgs

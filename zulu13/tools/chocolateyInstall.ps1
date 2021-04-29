$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'zulu'
  fileType      = 'msi'
  url64bit      = 'https://cdn.azul.com/zulu/bin/zulu13.40.15-ca-jdk13.0.7-win_x64.msi'
  checksum64    = 'c4d5800108a0695a3e4a7f98977dcbc69840755fb0bebaa49dfb14aaea610fd5'
  checksumType64= 'sha256'
  silentArgs    = '/qn /norestart'
  validExitCodes= @(0)
  softwareName  = 'Zulu 13*'
}

Install-ChocolateyPackage @packageArgs

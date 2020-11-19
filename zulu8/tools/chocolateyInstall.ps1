$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'zulu8'
  fileType      = 'msi'
  url64bit      = 'https://cdn.azul.com/zulu/bin/zulu8.50.0.53-ca-fx-jdk8.0.275-win_x64.msi'
  checksum64    = 'c7ec1789efaa5064bd81d0354da936638fdcbb9fc75200804d753c10a9b47d5f'
  checksumType64= 'sha256'
  silentArgs    = '/qn /norestart'
  validExitCodes= @(0)
  softwareName  = 'Zulu 8*'
}

Install-ChocolateyPackage @packageArgs

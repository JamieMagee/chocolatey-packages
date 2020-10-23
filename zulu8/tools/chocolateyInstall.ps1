$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'zulu8'
  fileType      = 'msi'
  url64bit      = 'https://cdn.azul.com/zulu/bin/zulu8.50.0.21-ca-jdk8.0.272-win_x64.msi'
  checksum64    = '544398b748013b8ce0b8b0c02c61e0aa5836cf38bc8e50eea98bcda9065b894c'
  checksumType64= 'sha256'
  silentArgs    = '/qn /norestart'
  validExitCodes= @(0)
  softwareName  = 'Zulu 8*'
}

Install-ChocolateyPackage @packageArgs

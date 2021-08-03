$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'zulu8'
  fileType      = 'msi'
  url64bit      = 'https://cdn.azul.com/zulu/bin/zulu8.56.0.23-ca-fx-jdk8.0.302-win_x64.msi'
  checksum64    = 'f35809cbf8ef4454fe923bc3785c2755faeaea3dc0b43cfb91c8f2c0573e149f'
  checksumType64= 'sha256'
  silentArgs    = '/qn /norestart'
  validExitCodes= @(0)
  softwareName  = 'Zulu 8*'
}

Install-ChocolateyPackage @packageArgs

$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'zulu12'
  fileType      = 'msi'
  url64bit      = 'https://cdn.azul.com/zulu/bin/zulu12.1.3-ca-jdk12-win_x64.msi'
  checksum64    = '9556f4e65e9b54ea44b27c9d86cc14e0cdada15e85237671345c38a80018e4a4'
  checksumType64= 'sha256'
  silentArgs    = '/qn /norestart'
  validExitCodes= @(0)
  softwareName  = 'Zulu 12*'
}

Install-ChocolateyPackage @packageArgs

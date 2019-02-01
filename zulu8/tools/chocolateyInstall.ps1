$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'zulu8'
  fileType      = 'msi'
  url64bit      = 'https://cdn.azul.com/zulu/bin/zulu8.36.0.1-ca-jdk8.0.202-win_x64.msi'
  checksum64    = 'b6d2a4d84b6ebc582b3f1a2ad12c82462587c09915c35accb3504ae649e97a8f'
  checksumType64= 'sha256'
  silentArgs    = '/qn /norestart'
  validExitCodes= @(0)
  softwareName  = 'Zulu 8*'
}

Install-ChocolateyPackage @packageArgs

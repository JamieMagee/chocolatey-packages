$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'zulu11'
  fileType      = 'msi'
  url64bit      = 'https://cdn.azul.com/zulu/bin/zulu11.45.27-ca-jdk11.0.10-win_x64.msi'
  checksum64    = '133d79339f6a981a25a0d812a5c33b48d700d160f0cad9a50fe930e51d0d9df8'
  checksumType64= 'sha256'
  silentArgs    = '/qn /norestart'
  validExitCodes= @(0)
  softwareName  = 'Zulu 11*'
}

Install-ChocolateyPackage @packageArgs

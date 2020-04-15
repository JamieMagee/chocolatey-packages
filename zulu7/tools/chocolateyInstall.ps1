$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'zulu7'
  fileType      = 'msi'
  url64bit      = 'https://cdn.azul.com/zulu/bin/zulu7.38.0.11-ca-jdk7.0.262-win_x64.msi'
  checksum64    = '203bc3782b1bf8bef24bd7ede94a663ab4e5d22d6f3e156740f6b414421c6c8b'
  checksumType64= 'sha256'
  silentArgs    = '/qn /norestart'
  validExitCodes= @(0)
  softwareName  = 'Zulu 7*'
}

Install-ChocolateyPackage @packageArgs

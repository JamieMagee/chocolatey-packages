$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'zulu11'
  fileType      = 'msi'
  url64bit      = 'https://cdn.azul.com/zulu/bin/zulu11.33.15-ca-jdk11.0.4-win_x64.msi'
  checksum64    = '09b70b37b142b756e15ddd2494da832ef065d7f2cf7b05065c2b2fcc69308cef'
  checksumType64= 'sha256'
  silentArgs    = '/qn /norestart'
  validExitCodes= @(0)
  softwareName  = 'Zulu 11*'
}

Install-ChocolateyPackage @packageArgs

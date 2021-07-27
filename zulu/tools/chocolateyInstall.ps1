$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'zulu'
  fileType      = 'msi'
  url64bit      = 'https://cdn.azul.com/zulu/bin/zulu16.32.15-ca-jdk16.0.2-win_x64.msi'
  checksum64    = '67ba6c0bc7d8495d4f3b8b73666da7d60811da120ff89808886100c9a2b8cb5c'
  checksumType64= 'sha256'
  silentArgs    = '/qn /norestart  INSTALLDIR="C:\Program Files\Zulu\zulu"'
  validExitCodes= @(0)
  softwareName  = 'Zulu*'
}

Install-ChocolateyPackage @packageArgs

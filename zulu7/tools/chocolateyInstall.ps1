$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'zulu7'
  fileType      = 'msi'
  url64bit      = 'https://cdn.azul.com/zulu/bin/zulu7.44.0.11-ca-jdk7.0.292-win_x64.msi'
  checksum64    = '2431b30e23a5c58b7ff47dc7488adb46c10aefe50aadb59be215ee31caff5e65'
  checksumType64= 'sha256'
  silentArgs    = '/qn /norestart'
  validExitCodes= @(0)
  softwareName  = 'Zulu 7*'
}

Install-ChocolateyPackage @packageArgs

$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'zulu'
  fileType      = 'msi'
  url64bit      = 'https://cdn.azul.com/zulu/bin/zulu15.34.17-ca-jdk15.0.4-win_x64.msi'
  checksum64    = 'c1d4dfb2525265af1f96142ebf356acfe9d7286c774d6c2755cee5bbe5a1bf35'
  checksumType64= 'sha256'
  silentArgs    = '/qn /norestart'
  validExitCodes= @(0)
  softwareName  = 'Zulu 15*'
}

Install-ChocolateyPackage @packageArgs

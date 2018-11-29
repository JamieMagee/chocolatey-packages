$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'zulu7'
  fileType      = 'msi'
  url64bit      = 'https://cdn.azul.com/zulu/bin/zulu7.25.0.5-jdk7.0.201-win_x64.msi'
  checksum64    = '876eb58499e7a8ccd6bd36df855c6b5efc252eab6ed8dd018896139ca69c5bb9'
  checksumType64= 'sha256'
  silentArgs    = '/qn /norestart'
  validExitCodes= @(0)
  softwareName  = 'Zulu 7*'
}

Install-ChocolateyPackage @packageArgs

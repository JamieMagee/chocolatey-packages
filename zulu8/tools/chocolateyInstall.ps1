$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'zulu8'
  fileType      = 'msi'
  url64bit      = 'https://cdn.azul.com/zulu/bin/zulu8.40.0.25-ca-jdk8.0.222-win_x64.msi'
  checksum64    = 'c093b414671b9f3048d3c498f76a7830df7e4b12838ed365a73885481055a37b'
  checksumType64= 'sha256'
  silentArgs    = '/qn /norestart'
  validExitCodes= @(0)
  softwareName  = 'Zulu 8*'
}

Install-ChocolateyPackage @packageArgs

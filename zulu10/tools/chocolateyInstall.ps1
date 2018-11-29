$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'zulu10'
  fileType      = 'msi'
  url64bit      = ''
  checksum64    = ''
  checksumType64= 'sha256'
  silentArgs    = '/qn /norestart'
  validExitCodes= @(0)
  softwareName  = 'Zulu 10*'
}

Install-ChocolateyPackage @packageArgs

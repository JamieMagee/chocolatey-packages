$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'zulu6'
  fileType      = 'msi'
  url64bit      = ''
  checksum64    = ''
  checksumType64= 'sha256'
  silentArgs    = '/qn /norestart'
  validExitCodes= @(0)
  softwareName  = 'Zulu 6*'
}

Install-ChocolateyPackage @packageArgs

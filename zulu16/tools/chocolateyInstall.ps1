$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'zulu'
  fileType      = 'msi'
  url64bit      = 'https://cdn.azul.com/zulu/bin/zulu16.30.15-ca-jdk16.0.1-win_x64.msi'
  checksum64    = '146bbf0758172a6d4291f2116f4a2eb40f0d22ff534c65493471ff867378e783'
  checksumType64= 'sha256'
  silentArgs    = '/qn /norestart'
  validExitCodes= @(0)
  softwareName  = 'Zulu 16*'
}

Install-ChocolateyPackage @packageArgs

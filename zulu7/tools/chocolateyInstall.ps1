$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'zulu7'
  fileType      = 'msi'
  url64bit      = 'https://cdn.azul.com/zulu/bin/zulu7.29.0.5-ca-jdk7.0.222-win_x64.msi'
  checksum64    = '29f0870115adbbf755f8885377b0c9472b36d5f4da52c318a24dbca03dffa43b'
  checksumType64= 'sha256'
  silentArgs    = '/qn /norestart'
  validExitCodes= @(0)
  softwareName  = 'Zulu 7*'
}

Install-ChocolateyPackage @packageArgs

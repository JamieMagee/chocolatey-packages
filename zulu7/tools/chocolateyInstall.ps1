$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'zulu7'
  fileType      = 'msi'
  url64bit      = 'https://cdn.azul.com/zulu/bin/zulu7.48.0.11-ca-jdk7.0.312-win_x64.msi'
  checksum64    = '0b082d9c4a302e1a786fbf0ec88c959482089ba5c52c876e6b5a64259ba94103'
  checksumType64= 'sha256'
  silentArgs    = '/qn /norestart'
  validExitCodes= @(0)
  softwareName  = 'Zulu 7*'
}

Install-ChocolateyPackage @packageArgs

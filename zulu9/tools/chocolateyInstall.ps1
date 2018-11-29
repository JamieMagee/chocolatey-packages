$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'zulu9'
  fileType      = 'msi'
  url64bit      = 'https://cdn.azul.com/zulu/bin/zulu9.0.7.1-jdk9.0.7-win_x64.msi'
  checksum64    = 'fd634872356299074baecc93dc019aff21682d1b6d325bc65caaf8e83071553f'
  checksumType64= 'sha256'
  silentArgs    = '/qn /norestart'
  validExitCodes= @(0)
  softwareName  = 'Zulu 9*'
}

Install-ChocolateyPackage @packageArgs

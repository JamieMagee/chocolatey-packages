$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'zulu8'
  fileType      = 'msi'
  url64bit      = 'https://cdn.azul.com/zulu/bin/zulu8.38.0.13-ca-jdk8.0.212-win_x64.msi'
  checksum64    = 'fb2f03b05998633eb3ea29de7bc5631d63695f689730201220ce324e8d018769'
  checksumType64= 'sha256'
  silentArgs    = '/qn /norestart'
  validExitCodes= @(0)
  softwareName  = 'Zulu 8*'
}

Install-ChocolateyPackage @packageArgs

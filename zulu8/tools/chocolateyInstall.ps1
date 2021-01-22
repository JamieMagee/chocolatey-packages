$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'zulu8'
  fileType      = 'msi'
  url64bit      = 'https://cdn.azul.com/zulu/bin/zulu8.52.0.23-ca-jdk8.0.282-win_x64.msi'
  checksum64    = 'bccc0740da32a450f0c3d24f288f6e6ed81220c6af46c4bb8daaf092bb1b5414'
  checksumType64= 'sha256'
  silentArgs    = '/qn /norestart'
  validExitCodes= @(0)
  softwareName  = 'Zulu 8*'
}

Install-ChocolateyPackage @packageArgs

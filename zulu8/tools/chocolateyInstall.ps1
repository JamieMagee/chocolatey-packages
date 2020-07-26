$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'zulu8'
  fileType      = 'msi'
  url64bit      = 'https://cdn.azul.com/zulu/bin/zulu8.48.0.51-ca-jdk8.0.262-win_x64.msi'
  checksum64    = 'b472194fd6dcef99fb29f38c7aa5803f69778bb4f889bdd75abd820c7624930e'
  checksumType64= 'sha256'
  silentArgs    = '/qn /norestart'
  validExitCodes= @(0)
  softwareName  = 'Zulu 8*'
}

Install-ChocolateyPackage @packageArgs

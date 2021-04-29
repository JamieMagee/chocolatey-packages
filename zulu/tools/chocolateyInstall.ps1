$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'zulu'
  fileType      = 'msi'
  url64bit      = 'https://cdn.azul.com/zulu/bin/zulu15.32.15-ca-jdk15.0.3-win_x64.msi'
  checksum64    = '909f04f0c7705c845f4ed3b301ec7275164b935f4542d786314aa331ccc0cc51'
  checksumType64= 'sha256'
  silentArgs    = '/qn /norestart  INSTALLDIR="C:\Program Files\Zulu\zulu"'
  validExitCodes= @(0)
  softwareName  = 'Zulu*'
}

Install-ChocolateyPackage @packageArgs

$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'jetty'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url            = 'https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.4.29.v20200521/jetty-distribution-9.4.29.v20200521.zip'
  checksum       = '271ac63b9317bc6d6dbb6b591fece32aa2635fae1639b1866810a8b45e1d5cf4'
  checksumType   = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

$zip = Split-Path $packageArgs.url -Leaf
$dir = $zip.Substring(0, $zip.Length - 4)

Install-ChocolateyEnvironmentVariable 'JETTY_HOME' "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\$dir"

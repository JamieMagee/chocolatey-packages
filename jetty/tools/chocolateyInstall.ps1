$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'jetty'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url            = 'https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.4.19.v20190610/jetty-distribution-9.4.19.v20190610.zip'
  checksum       = '141be2f8738ce3bdf3210df02d85a7c2289603883bf2b72252aa55b5f39c0f00'
  checksumType   = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

$zip = Split-Path $packageArgs.url -Leaf
$dir = $zip.Substring(0, $zip.Length - 4)

Install-ChocolateyEnvironmentVariable 'JETTY_HOME' "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\$dir"

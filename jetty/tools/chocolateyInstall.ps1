$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'jetty'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url            = 'https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.4.15.v20190215/jetty-distribution-9.4.15.v20190215.zip'
  checksum       = '78347deb15b998ff21675c9c50267641d1ea6a88c1c1d10ad68970d9fb74f409'
  checksumType   = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

$zip = Split-Path $packageArgs.url -Leaf
$dir = $zip.Substring(0, $zip.Length - 4)

Install-ChocolateyEnvironmentVariable 'JETTY_HOME' "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\$dir"

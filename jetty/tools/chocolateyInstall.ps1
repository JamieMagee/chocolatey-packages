$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'jetty'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url            = 'https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.4.31.v20200723/jetty-distribution-9.4.31.v20200723.zip'
  checksum       = 'd7f2facbfcf1cf935887f414d5ad603af358625774f2c64d430cc094f165ef1b'
  checksumType   = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

$zip = Split-Path $packageArgs.url -Leaf
$dir = $zip.Substring(0, $zip.Length - 4)

Install-ChocolateyEnvironmentVariable 'JETTY_HOME' "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\$dir"

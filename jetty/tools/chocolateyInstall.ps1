$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'jetty'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url            = 'https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.4.17.v20190418/jetty-distribution-9.4.17.v20190418.zip'
  checksum       = '13111c334026b13a2b6763661a5e88df564ff7f6775f984517e4b65a3bd979ad'
  checksumType   = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

$zip = Split-Path $packageArgs.url -Leaf
$dir = $zip.Substring(0, $zip.Length - 4)

Install-ChocolateyEnvironmentVariable 'JETTY_HOME' "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\$dir"

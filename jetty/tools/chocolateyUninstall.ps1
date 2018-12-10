$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName = 'jetty'
  zipFileName = 'jetty-distribution-9.4.14.v20181114.zip'
}

Uninstall-ChocolateyZipPackage @packageArgs

Uninstall-ChocolateyEnvironmentVariable 'JETTY_HOME'
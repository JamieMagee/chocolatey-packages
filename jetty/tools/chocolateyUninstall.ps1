$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName = 'jetty'
}

Uninstall-ChocolateyZipPackage @packageArgs

Uninstall-ChocolateyEnvironmentVariable 'JETTY_HOME'
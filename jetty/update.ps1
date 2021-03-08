import-module au

$releases = 'https://www.eclipse.org/jetty/download.php'

function global:au_BeforeUpdate {
  $Latest.ChecksumType32 = 'sha256'
  $Latest.Checksum32 = Get-RemoteChecksum -Url $Latest.URL32 -Algorithm $Latest.ChecksumType32
}

function global:au_SearchReplace {
  @{
    ".\tools\chocolateyInstall.ps1" = @{
      "(?i)(^\s*url\s*=\s*)('.*')"      = "`$1'$($Latest.URL32)'"
      "(?i)(^\s*checksum\s*=\s*)('.*')" = "`$1'$($Latest.Checksum32)'"
    }
  }
}

function global:au_GetLatest {
  $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing

  $url = $download_page.links | Where-Object href -match '^.*.zip$' | ForEach-Object href | Select-Object -Last 1
  $zip = ((Split-Path $url -Leaf) -split "-")[2]
  $version = $zip.Substring(0, $zip.Length - 4)

  @{
    URL32   = $url
    Version = $version
  }
}

update -ChecksumFor none
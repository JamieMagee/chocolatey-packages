import-module au

$releases = 'https://www.eclipse.org/jetty/download.html'

function global:au_SearchReplace {
  @{
    ".\tools\chocolateyInstall.ps1" = @{
      "(?i)(^\s*url\s*=\s*)('.*')"      = "`$1'$($Latest.URL32)'"
      "(?i)(^\s*checksum\s*=\s*)('.*')" = "`$1'$($Latest.Checksum32)'"
    }
  }
}

function global:au_GetLatest {
  $download_page = (New-Object System.Net.WebClient).DownloadString($releases)
  $html = New-Object -ComObject "HTMLFile"
  $html.IHTMLDocument2_write($download_page)

  $url = $html.links | Where-Object href -match '^.*.zip$' | ForEach-Object href | Select-Object -First 1
  $zip = ((Split-Path $url -Leaf) -split "-")[2]
  $version = $zip.Substring(0, $zip.Length - 4).Replace('v', '')

  @{
    URL32   = $url
    Version = $version
  }
}

update -ChecksumFor 32
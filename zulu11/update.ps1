import-module au

$releases = 'https://www.azul.com/wp-admin/admin-ajax.php'

function global:au_SearchReplace {
  @{
    ".\tools\chocolateyInstall.ps1" = @{
      "(?i)(^\s*url64bit\s*=\s*)('.*')"   = "`$1'$($Latest.URL64)'"
      "(?i)(^\s*checksum64\s*=\s*)('.*')" = "`$1'$($Latest.Checksum64)'"
    }
  }
}

function global:au_GetLatest {
  $download_page = curl.exe $releases -d 'action=bundles_filter_query&action=search_bundles'

  $release = (($download_page | ConvertFrom-Json) | Where-Object -FilterScript { $_.os_slug -eq "windows" -and $_.arch_slug -eq "x86-64-bit" -and $_.category_slug -eq "java-11-lts" -and $_.packaging_slug -eq "jdk" } | Select-Object -First 1).bundles | Where-Object {$_.extension -eq "msi"}

  $url64 = $release.link
  $version = (Split-Path $url64 -Leaf | Select-String -Pattern '^zulu11((\.\d+)+)').Matches.Value.Substring(4)

  @{
    URL64   = $url64
    Version = $version
  }
}

update -ChecksumFor 64
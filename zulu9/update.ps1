import-module au

$releases = 'https://www.azul.com/downloads/zulu/zulu-windows/'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*url64bit\s*=\s*)('.*')"     = "`$1'$($Latest.URL64)'"
            "(?i)(^\s*checksum64\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum64)'"
        }
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing

    $url64   = $download_page.links | ? href -match '^.*jdk9.*.msi$' | % href | select -First 1
    $version = (Split-Path $url64 -Leaf | Select-String -Pattern '^zulu9((\.\d+)+)').Matches.Value.Substring(4)

    @{
        URL64   = $url64
        Version = $version
    }
}

update -ChecksumFor 64
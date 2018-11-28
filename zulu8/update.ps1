import-module au

$releases = 'https://www.azul.com/downloads/zulu/zulu-windows/'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*url64bit\s*=\s*)('.*')"        = "`$1'$($Latest.URL64)'"
            "(?i)(^\s*checksum64\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum64)'"
        }
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases

    $url64   = $download_page.links | ? href -match '^.*jdk8.*.msi$' | % href | select -First 1
    $version = Split-Path $url -Leaf | Select-String -Pattern '^zulu8\.\d+\.\d+' | foreach {$_.Matches.Value}

    @{
        URL64   = $url64
        Version = $version
    }
}

update
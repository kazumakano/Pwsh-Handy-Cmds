if (!(Test-Path $PROFILE)) {
    New-Item $PROFILE -Force
}

echo ". $(Join-Path $PSScriptRoot functions.ps1)" >> $PROFILE

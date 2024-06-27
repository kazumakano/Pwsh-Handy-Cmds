if (!(Test-Path $PROFILE)) {
    New-Item $PROFILE
}

echo ". $(Join-Path $PSScriptRoot functions.ps1)" >> $PROFILE

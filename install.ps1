if (!(Test-Path $PROFILE)) {
    New-Item $PROFILE
}

echo @"
foreach (`$f in Get-ChildItem (Join-Path $PSScriptRoot *.ps1) -Exclude install.ps1) {
    Set-Alias `$f.BaseName.Replace('_', '-') `$f
}
"@ > $PROFILE

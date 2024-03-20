if (!(Test-Path $PROFILE)) {
    New-Item $PROFILE
}

echo "Set-Alias ssh-copy-id $(Join-Path $PSScriptRoot ssh_copy_id.ps1)" >> $PROFILE
echo "Set-Alias x11 $(Join-Path $PSScriptRoot x11.ps1)" >> $PROFILE

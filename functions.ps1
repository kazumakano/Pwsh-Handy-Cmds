function ssh-copy-id {
    Param (
        [parameter(mandatory=$True)] $Dst,
        [parameter(mandatory=$True)] $PubKeyFile
    )

    cat $PubKeyFile | ssh $Dst 'mkdir -p ~/.ssh/; chmod 700 ~/.ssh/; cat >> ~/.ssh/authorized_keys; chmod 600 ~/.ssh/authorized_keys'
}

function x11 {
    Param (
        [parameter(mandatory=$True)] $Dst
    )

    $EXE_FILE = 'C:\Program Files\VcXsrv\xlaunch.exe'

    Start-Process $EXE_FILE
    $env:DISPLAY = 'localhost:0'
    pause
    ssh -Y $Dst
    Stop-Process -Name 'vcxsrv'
}

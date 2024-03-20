Param (
    [parameter(mandatory=$True)] $Dst
)

$EXE_FILE = 'C:\Program Files\VcXsrv\xlaunch.exe'

Start-Process $EXE_FILE
$env:DISPLAY = 'localhost:0'
pause
ssh -Y $Dst
Stop-Process -Name 'vcxsrv'

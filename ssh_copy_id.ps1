Param (
    [parameter(mandatory=$True)] $Dst,
    [parameter(mandatory=$True)] $PubKeyFile
)

cat $PubKeyFile | ssh $Dst 'mkdir -p ~/.ssh/; chmod 700 ~/.ssh/; cat >> ~/.ssh/authorized_keys; chmod 600 ~/.ssh/authorized_keys'

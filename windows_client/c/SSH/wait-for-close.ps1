$x = 0

while ($x -eq 0){
    Start-Sleep -Seconds 0.1
    $proc = Get-Process $args[0] -ErrorAction SilentlyContinue
    if ($proc -eq $Null) {
        $x = 1
    } else {
        $x = 0
    }
}

echo "done"

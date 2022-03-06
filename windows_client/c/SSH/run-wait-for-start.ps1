Get-AudioDevice -List | where Type -Like "Playback" | where Name -Like "*Scream*" | Set-AudioDevice

$sciezka = $args[0]
$sciezka = $sciezka -Split ".exe "
$program = $sciezka[0]
$params = $sciezka[1]
$bgcolor = $args[3]
$waitTime = $args[2]

echo $program
echo $params
echo $waitTime

#add-type -typedefinition "using System;`n using System.Runtime.InteropServices;`n public class PInvoke { [DllImport(`"user32.dll`")] public static extern bool SetSysColors(int cElements, int[] lpaElements, int[] lpaRgbValues); }"

# Now to get your desktop to instantly turn purple, run it with:
#[PInvoke]::SetSysColors(1, @(1), @(0xAA40C0))
# Or tack it on the end of above for a true one-line experience.

if ($params -eq $Null){
    Start-Process $program -RedirectStandardOutput '.\console.out' -RedirectStandardError '.\console.err'
} else {
    Start-Process $program -ArgumentList $params -RedirectStandardOutput '.\console.out' -RedirectStandardError '.\console.err'
}
echo "Starting"
$x = 0
Start-Sleep -Seconds $waitTime

while ($x -eq 0){
    $proc = Get-Process $args[1] -ErrorAction SilentlyContinue
    if ($proc -eq $Null) {
        $x = 0
    } else {
        $x = 1
    }
    Start-Sleep -Seconds 0.5
}
echo "done"
exit

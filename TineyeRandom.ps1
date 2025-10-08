function Get-RandomHex {
    $hex = '0123456789ABCDEF'
    $randomhex = 1..6 | % { $hex[(Get-Random -Minimum 0 -Maximum $hex.Length)]}
    $randomhex -join ""
}

$numselect1 = 1..99 | get-random
$numselect2 = 100 - $numselect1

$randomweight = "$numselect1" + "," + "$numselect2"

$link = "https://labs.tineye.com/multicolr/#colors=" + (Get-RandomHex) + "," + (Get-RandomHex) + ";weights=" + "$randomweight" + ";"

start-process $link
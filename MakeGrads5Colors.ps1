$htext = '0,1,2,3,4,5,6,7,8,9,A,B,C,D,E,F' -split ','

function Make-HexCode
{
    (1..6 | % { $htext | get-random }) -join ""
}

function Make-GradString
{
    param (
        $cnt
    )
    $string = "--gradient--electric"+"$cnt"+": linear-gradient("+"90deg,#"+(Make-HexCode)+" 0%,#"+(Make-HexCode)+" 25%,#"+(Make-HexCode)+" 50%,#"+(Make-HexCode)+" 75%,#"+(Make-HexCode)+" 100%"+");"
    $string
}

function Make-Root
{
    $rootstr = $count = 1..10 | foreach {($_ | % { Make-GradString -cnt $_})}
    $rootstr
}

$htmlroot = Make-Root

$htmltext = @"

<style type="text/css">

i {
    opacity: 0%;
}

.grad1 {
  background: var(--gradient--electric1) !important;
}

.grad2 {
  background: var(--gradient--electric2) !important;
}

.grad3 {
  background: var(--gradient--electric3) !important;
}

.grad4 {
  background: var(--gradient--electric4) !important;
}

.grad5 {
  background: var(--gradient--electric5) !important;
}

.grad6 {
  background: var(--gradient--electric6) !important;
}

.grad7 {
  background: var(--gradient--electric7) !important;
}

.grad8 {
  background: var(--gradient--electric8) !important;
}

.grad9 {
  background: var(--gradient--electric9) !important;
}

.grad10 {
  background: var(--gradient--electric10) !important;
}

:root {
$htmlroot
}

</style>

<body bgcolor="#000000">

<table width=100%>

    <tr>
        <td class="grad1"><p><i>-</i></p><p><i>-</i></p></td>
        <td><p><i>-</i></p><p><i>-</i></p></td>
        <td class="grad2"><p><i>-</i></p><p><i>-</i></p></td>
        <td><p><i>-</i></p><p><i>-</i></p></td>
        <td class="grad3"><p><i>-</i></p><p><i>-</i></p></td>
        <td><p><i>-</i></p><p><i>-</i></p></td>
        <td class="grad4"><p><i>-</i></p><p><i>-</i></p></td>
        <td><p><i>-</i></p><p><i>-</i></p></td>
        <td class="grad5"><p><i>-</i></p><p><i>-</i></p></td>
    </tr>
    <tr>
        <td><p><i>-</i></p><p><i>-</i></p></td>
        <td><p><i>-</i></p><p><i>-</i></p></td>
        <td><p><i>-</i></p><p><i>-</i></p></td>
        <td><p><i>-</i></p><p><i>-</i></p></td>
        <td><p><i>-</i></p><p><i>-</i></p></td>
        <td><p><i>-</i></p><p><i>-</i></p></td>
        <td><p><i>-</i></p><p><i>-</i></p></td>
        <td><p><i>-</i></p><p><i>-</i></p></td>
        <td><p><i>-</i></p><p><i>-</i></p></td>
    </tr>    
    <tr>
        <td class="grad6"><p><i>-</i></p><p><i>-</i></p></td>
        <td><p><i>-</i></p><p><i>-</i></p></td>
        <td class="grad7"><p><i>-</i></p><p><i>-</i></p></td>
        <td><p><i>-</i></p><p><i>-</i></p></td>
        <td class="grad8"><p><i>-</i></p><p><i>-</i></p></td>
        <td><p><i>-</i></p><p><i>-</i></p></td>
        <td class="grad9"><p><i>-</i></p><p><i>-</i></p></td>
        <td><p><i>-</i></p><p><i>-</i></p></td>
        <td class="grad10"><p><i>-</i></p><p><i>-</i></p></td>
    </tr>

</table>
</body>

"@

New-Item -Path ".\Gradients5Colors.html" -Value $htmltext -Force
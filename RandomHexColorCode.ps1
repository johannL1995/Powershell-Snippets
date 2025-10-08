# Generates a random Hex Color code

function Get-RandomHex {
    $hex = '0123456789ABCDEF'
    $randomhex = 1..6 | % { $hex[(Get-Random -Minimum 0 -Maximum $hex.Length)]}
    $randomhex -join ""
}
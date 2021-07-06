$true
$false

"czesc" -eq "hi"

$hi1 = "czesc"
$hi2 = "hi"

$hi1 -eq $hi2

1 -eq 1
1 -ne 2
1 -lt 2

$array = (1, 2, 3, 7)
3 -in $array
8 -in $array

$array = ("1", "2", "3", "7")
"3" -in $array
"8" -in $array

$zmienna = "pies"
$zmienna2 = "pblas"

$zmienna -like "*p*s"
$zmienna2 -like "p*s"
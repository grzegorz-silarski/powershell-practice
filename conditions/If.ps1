$owoc = "banan"
$owoce = ("banan", "melon")

if ($owoc -in $owoce) {
    #Kod jeśli warunek prawda
    Write-Output "$owoc jest na liście owoców"
}
else {
    #Kod jeśli warunek fałsz
    Write-Output "$owoc nie jest na liście owoców"
}

$owoc = "brzoskwinia"
$owoce = ("banan", "melon")

if ($owoc -in $owoce) {
    #Kod jeśli warunek prawda
    Write-Output "$owoc jest na liście owoców"
}
else {
    #Kod jeśli warunek fałsz
    Write-Output "$owoc nie jest na liście owoców"
}

#Inny sposób zapisu If-a (działa w PS > 7.0)
($owoc -in $owoce) ? (Write-Output "$owoc jest na liście owoców") : (Write-Output "$owoc nie jest na liście owoców")
$zmiennaZowocem = ($owoc -in $owoce) ? $owoc : "Nie ma takiego owocu"
$zmiennaZowocem
$zmiennaZowocem = if ($owoc -in $owoce) { $owoc } else { "Nie ma takiego owocu" }
$zmiennaZowocem
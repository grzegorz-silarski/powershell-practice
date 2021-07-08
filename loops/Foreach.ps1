$ceny = @{
    marchew    = 2.00
    pietruszka = 4.00
    seler      = 1.50
}

$produkty = @("marchew", "pietruszka", "seler")

#Pętla 1
foreach ($produkt in $ceny.Keys) {
    Write-Host "Produkt: $produkt"
    Write-Host "Cena: $($ceny.$produkt)"
}

#Pętla 2 - robi to samo jak 1 tylko trochę inaczej zapisana
foreach ($produkt in $ceny.GetEnumerator()) {
    Write-Host "Produkt: $($produkt.Key)"
    Write-Host "Cena: $($produkt.Value)"
}

foreach ($produkt in $produkty) {
    Write-Host "Mój produkt to: $produkt"
}
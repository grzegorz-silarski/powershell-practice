$ceny = @{
    marchew    = 2.00
    pietruszka = 4.00
    seler      = 1.50
}

foreach ($produkt in $ceny.Keys) {
    Write-Output "Produkt: $produkt"
    Write-Output "Cena: $($ceny.$produkt)"
}
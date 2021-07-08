$ceny = @{
    marchew    = 2.00
    pietruszka = 4.00
    seler      = 1.50
}

$produkty = @("marchew", "pietruszka", "seler")

$keys = [array]$ceny.Keys
for ($i = 0; $i -lt $keys.Count; $i++) {
    Write-Host "Produkt: $($keys[$i])"
    Write-Host "Cena: $($ceny[$keys[$i]])"
}

for ($i = 0; $i -lt $produkty.Count; $i++) {
    Write-Host "Mój produkt to: $($produkty[$i])"
}
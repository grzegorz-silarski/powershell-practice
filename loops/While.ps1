$i = 1

#Wykonuje się tak długo dopóki warunek jest True
#Warunek sprawdzany na początku
while ($i -le 4) {
    Write-Host "Iteracja $i"
    Start-Sleep -Seconds 1
    $i++
}

$i = 5

#Nie wykona się
while ($i -le 4) {
    Write-Host "Iteracja $i"
    Start-Sleep -Seconds 1
    $i++
}
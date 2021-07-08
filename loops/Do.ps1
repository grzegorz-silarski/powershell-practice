#Wykonuje się tak długo dopóki warunek jest False
#Warunek sprawdzany na końcu
$i = 1
do {
    Write-Host "Do Until Iteracja $i"
    Start-Sleep -Seconds 1
    $i++
} until ($i -gt 4)

#Wykonuje się tak długo dopóki warunek jest True
#Warunek sprawdzany na końcu
$i = 1
do {
    Write-Host "Do While Iteracja $i"
    Start-Sleep -Seconds 1
    $i++
} while ($i -le 4)

#Wykona się zawsze przynajmniej raz
$i = 5
do {
    Write-Host "Do Until Iteracja $i"
    Start-Sleep -Seconds 1
    $i++
} until ($i -gt 4)

#Wykona się zawsze przynajmniej raz
$i = 5
do {
    Write-Host "Do While Iteracja $i"
    Start-Sleep -Seconds 1
    $i++
} while ($i -le 4)
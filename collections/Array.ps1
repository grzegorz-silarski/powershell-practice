#Po co wpisywać pojedynczo elementy do zmiennych. Lepiej wpisać je do jednej zmiennej w formie tablicy.

# Ctr + / - aby zrobić komentarz w Visual Studio Code

#Pojedyncze zmienne
$produkt1 = "truskawki"
$produkt2 = "pomidory"
$produkt3 = "cebula"
$produkt4 = "marchew"

$produkt1
$produkt2
$produkt3
$produkt4

Write-Host ""
Write-Output "Tutaj mamy tablice:"

#Tablice - Array

$produkty = "truskawki", "pomidory", "cebula", "marchew"
$produkty[2]
$produkty
$produkty[2].GetType()
$produkty.GetType()

$produkty = "truskawki", "pomidory", "cebula", 1
$produkty[3]
$produkty
$produkty[3].GetType()
$produkty.GetType()

$produkty = "truskawki", "pomidory", "cebula", 1
$produkty2 = "wisnie", "czeresnie", "cebula", 2

$wiecejProduktow = $produkty + $produkty2
$znaki = "abcdefgh" + "ddd" #Łączenie napisów operatorem konkatenacji +

$produkt1 = "truskawki"
$produkt1.GetType()

$array1 = 1, 2, 3, 4
$array2 = (1, 2, 3, 4)
$array3 = @(1, 2, 3, 4)
$array4 = 1..4

$array1
$array2
$array3
$array4
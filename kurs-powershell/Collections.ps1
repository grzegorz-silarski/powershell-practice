$produkt1 = "truskawki"
$produkt2 = "pomidory"
$produkt3 = "cebula"
$produkt4 = "marchew"

$produkt1
$produkt2
$produkt3
$produkt4
# Ctr + /

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
$znaki = "abcdefgh" + "ddd"

$produkt1 = "truskawki"
$produkt1.GetType()

$array1 = 1, 2, 3, 4
$array2 = (1, 2, 3, 4)
$array3 = @(1, 2, 3, 4)
$array4 = @()

#Hashtablice - HashTable
$produktyZcenami = @{}

$produktyZcenami.marchew = 1.50
$produktyZcenami["cebula"] = 1.70
$produktyZcenami.Add("wisnie", 6)

$produktyZcenami.wisnie
$produktyZcenami["cebula"]

Write-Host "Cena wiśni: $($produktyZcenami.wisnie)"
Write-Host "Cena cebuli: $($produktyZcenami['cebula'])"

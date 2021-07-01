#Hashtablice - HashTable
$produktyZcenami = @{}

$produktyZcenami.marchew = 1.50
$produktyZcenami["cebula"] = 1.70
$produktyZcenami.Add("wisnie", 6)

$produktyZcenami.wisnie
$produktyZcenami["cebula"]

Write-Host "Cena wiśni: $($produktyZcenami.wisnie)"
Write-Host "Cena cebuli: $($produktyZcenami['cebula'])"

#Przykład dynamicznej tablicy - kalsa ArrayList. Mozna dodawać elementy do tablicy po jej stworzeniu. 

#Opcja zapisu 1
$dynamicznaTablica1 = New-Object -TypeName System.Collections.ArrayList
$dynamicznaTablica1.Add("pomidory") # Zwraca 0 - czyli numer indeksu pierwszego elementu
$dynamicznaTablica1.Add("truskawki") # Zwraca 1 - czyli numer indeksu drugiego elementu
$dynamicznaTablica1.Add("seler") # Zwraca 2 - czyli numer indeksu trzeciego elementu

# Dajemy Out-Null aby uniknąć listowania na ekranie indeksu kolejnego elementu do tablicy
$dynamicznaTablica1.Add("por") | Out-Null

Write-Host "Tablica 1:"
$dynamicznaTablica1
Write-Host

#Opcja zapisu 2
$dynamicznaTablica2 = [System.Collections.ArrayList]@()
$dynamicznaTablica2.Add("pomidory") | Out-Null
$dynamicznaTablica2.Add("truskawki") | Out-Null
$dynamicznaTablica2.Add("seler") | Out-Null
$dynamicznaTablica2.Add("por") | Out-Null

Write-Host "Tablica 2:"
$dynamicznaTablica2
Write-Host

#Opcja zapisu 3
$dynamicznaTablica3 = [System.Collections.ArrayList]@("pomidory", "truskawki", "seler")
$dynamicznaTablica3.Add("por") | Out-Null

Write-Host "Tablica 3:"
$dynamicznaTablica3
Write-Host

#Opcja zapisu 4
$array = @("pomidory", "truskawki", "seler", "por")
$dynamicznaTablica4 = [System.Collections.ArrayList]$array
$dynamicznaTablica4.Add("jabłka") | Out-Null

Write-Host "Tablica 4:"
$dynamicznaTablica4
Write-Host

#Opcja zapisu 5

$dynamicznaTablica5 = [System.Collections.ArrayList](1..5)
$dynamicznaTablica5.Add(6) | Out-Null

Write-Host "Tablica 5:"
$dynamicznaTablica5
Write-Host

#Opcja zapisu 6

$dynamicznaTablica6 = [System.Collections.ArrayList]("pomidory", "truskawki", "seler")
$dynamicznaTablica6.Add("por") | Out-Null

Write-Host "Tablica 6:"
$dynamicznaTablica6
Write-Host

#Usuwanie z tablicy

$dynamicznaTablica7 = [System.Collections.ArrayList]@("pomidory", "truskawki", "seler")
$dynamicznaTablica7.RemoveAt(1) #Usuwam truskawki bo mają index 1
$dynamicznaTablica7.Remove("seler") #Usuwam seler bo to ten sam obiekt co przekazałem w argumencie

Write-Host "Tablica 7:"
$dynamicznaTablica7 #Wyświetli tylko pomidory
Write-Host
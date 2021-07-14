#System.DateTime class requires an instance to call ToString() method
#Object of type System.DateTime needs to be created in memory
$date = New-Object System.DateTime(2021, 7, 13, 12, 0, 0)
Write-Host "Calling ToString()"
$date.ToString()

#System.DateTime class does not require an instance to call Today property
#This is static property
Write-Host
Write-Host "Calling Now"
[System.DateTime]::Now

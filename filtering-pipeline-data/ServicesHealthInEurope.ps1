Write-Host "Z `$_:"
$statusProperty = @{ Label = "status"; Expression = { ($_.geographies | Where-Object { $_.id -eq "EU" }).health } }
(& /Users/grzeg/Repos/powershell-practice/scripts/CheckAzDoServicesHealth.ps1).services | Format-Table id, $statusProperty

Write-Host "Z `$PSItem:"
$statusProperty = @{ Label = "status"; Expression = { ($PSItem.geographies | Where-Object { $PSItem.id -eq "EU" }).health } }
(& /Users/grzeg/Repos/powershell-practice/scripts/CheckAzDoServicesHealth.ps1).services | Format-Table id, $statusProperty

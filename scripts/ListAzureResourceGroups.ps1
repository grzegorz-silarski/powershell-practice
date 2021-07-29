Write-Host "RG list:"
$rgs = (& az group list) | ConvertFrom-Json
$rgs

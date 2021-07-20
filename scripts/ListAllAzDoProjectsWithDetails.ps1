param([string]$Pat)

$ErrorActionPreference = [System.Management.Automation.ActionPreference]::Stop
$token = [System.Convert]::ToBase64String([System.Text.Encoding]::ASCII.GetBytes(":$Pat"))
$headers = @{ authorization = "Basic $token" }

#Creates connection to AzDo API
function Get-AzDoProjectsList {
    $uri = "https://dev.azure.com/git-sources/_apis/projects?api-version=6.0"
    Invoke-RestMethod -Uri $uri -ContentType "application/json" -Headers $headers -Method Get
}

$ids = (Get-AzDoProjectsList).value.id

foreach ($id in $ids) {
    $projectUrl = "https://dev.azure.com/git-sources/_apis/projects/$($id)?api-version=6.0"
    Invoke-RestMethod -Uri $projectUrl -ContentType "application/json" -Headers $headers -Method Get
}
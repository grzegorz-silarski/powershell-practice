param([string]$Pat)

$ErrorActionPreference = [System.Management.Automation.ActionPreference]::Stop

#Creates connection to AzDo API
function Get-AzDoProjectsList([string]$Pat) {
    $token = [System.Convert]::ToBase64String([System.Text.Encoding]::ASCII.GetBytes(":$Pat"))
    $headers = @{authorization = "Basic $token" }
    $uri = "https://dev.azure.com/git-sources/_apis/projects?api-version=6.0"
    
    Invoke-RestMethod -Uri $uri -ContentType "application/json" -Headers $headers -Method Get
}

(Get-AzDoProjectsList -Pat $Pat).value

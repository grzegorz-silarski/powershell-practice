function Show-ServicesHealth {
    $uri = "https://status.dev.azure.com/_apis/status/health?api-version=6.0-preview.1"
    Invoke-RestMethod -Uri $uri -ContentType "application/json" -Method Get
}
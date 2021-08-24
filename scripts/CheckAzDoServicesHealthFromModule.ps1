$modulesDir = Join-Path (Split-Path $PSScriptRoot -Parent) "modules"
$azdoModulePath = Join-Path $modulesDir "AzDo"

Import-Module -Name $azdoModulePath
Show-ServicesHealth
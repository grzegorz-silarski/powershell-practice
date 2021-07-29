Write-Host "VM list:"
$vms = (& az vm list --show-details) | ConvertFrom-Json
$vms | Where-Object { $_.powerState -eq "VM deallocated" } | Select-Object name, location, privateIps

# Write-Host "Single VM:"
# $id = "/subscriptions/5ffb251d-16ec-41dd-aace-5af43ecf8dd1/resourceGroups/PSKURS/providers/Microsoft.Compute/virtualMachines/VM-linux-PSkurs"
# $vm = (& az vm show --show-details --ids $id) | ConvertFrom-Json
# $vm

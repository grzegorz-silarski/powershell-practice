[CmdletBinding()]
param(
    [Parameter(Mandatory)]
    [string]$Name,
    [Parameter(Mandatory)]
    [string]$ResourceGroupName
    # [ValidateNotNullOrEmpty()]
    # [Parameter(Mandatory)]
    # [hashtable]$Tags
)

$Tags = @{
    Test       = "PS Test"
    CostCenter = "IT and infra Dept"
}

$tagsToSet = [System.Collections.ArrayList]@()

foreach ($tag in $Tags.GetEnumerator()) {
    $tagsToSet.Add("tags.$($tag.Key)='$($tag.Value)'") | Out-Null
}

Invoke-Expression "& az vm update -n '$Name' -g '$ResourceGroupName' --set $($tagsToSet -join ' ')"
Write-Verbose "Script finished"
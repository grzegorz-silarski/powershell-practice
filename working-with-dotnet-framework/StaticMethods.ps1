#System Math methods are mostly static
#They don't require instance if an class object
[System.Math]::PI
[System.Math]::E
[System.Math]::Pow([System.Math]::sin(2), 2) + [System.Math]::Pow([System.Math]::cos(2), 2)

#Enum types are also static
#They don't require instance if an class object
Write-Host
Write-Host "Enums:"
[System.Data.XmlWriteMode]::DiffGram
[System.Data.XmlWriteMode]::IgnoreSchema
[System.Data.XmlWriteMode]::WriteSchema

[System.Data.XmlWriteMode]::DiffGram.value__
[System.Data.XmlWriteMode]::IgnoreSchema.value__
[System.Data.XmlWriteMode]::WriteSchema.value__

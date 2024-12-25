output "RG_Name_Out" {
    description = "RG Name"
    value = azurerm_resource_group.vmrg.name
  
}

output "RG_Location_Out" {
    description = "Location of RG"
    value = azurerm_resource_group.vmrg.location
  
}

output "RG_ID_Out" {
    description = "RG Name"
    value = azurerm_resource_group.vmrg.id
  
}
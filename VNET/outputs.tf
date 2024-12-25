output "VNET_Name_Out" {
    description = "ID of the VNET"
    value = azurerm_virtual_network.vnet.name
  
}

output "VNET_RGName_Out" {
    description = "RG of the VNET"
    value = azurerm_virtual_network.vnet.resource_group_name
  
}

output "Subnet1_Name" {
    description = "Name of the Subnet1"
    value = azurerm_subnet.subnet1.name
  
}

output "Subnet1_ID" {
    description = "ID of the Subnet1"
    value = azurerm_subnet.subnet1.id
  
}

output "Subnet2_Name" {
    description = "ID of the Subnet2"
    value = azurerm_subnet.subnet2.name
  
}

output "Subnet2_ID" {
    description = "ID of the Subnet2"
    value = azurerm_subnet.subnet2.id
  
}
resource "azurerm_resource_group" "vnetrg" {
  name     = "${var.base_vnet_rg_name}RG"
  location = var.base_vnet_location
}

resource "azurerm_network_security_group" "nsg" {
  name                = var.base_vnet_nsg_name
  location            = azurerm_resource_group.vnetrg.location
  resource_group_name = azurerm_resource_group.vnetrg.name
}

resource "azurerm_virtual_network" "vnet" {
  name                = var.base_vnet_name
  location            = azurerm_resource_group.vnetrg.location
  resource_group_name = azurerm_resource_group.vnetrg.name
  address_space       = ["10.0.0.0/16"]
  dns_servers         = ["10.0.0.4"]

}

  resource "azurerm_subnet" "subnet1" {
    name             = var.base_vnet_subnet1_name
    resource_group_name  = azurerm_resource_group.vnetrg.name
    virtual_network_name = azurerm_virtual_network.vnet.name
    address_prefixes = ["10.0.1.0/24"]
    
  }

    resource "azurerm_subnet" "subnet2" {
    name             = var.base_vnet_subnet2_name
    resource_group_name  = azurerm_resource_group.vnetrg.name
    virtual_network_name = azurerm_virtual_network.vnet.name
    address_prefixes = ["10.0.2.0/24"]
    
  }





resource "azurerm_resource_group" "sarg" {
  name     = "${var.base_sa_rg_name}RG"
  location = var.base_sa_location
}

resource "azurerm_storage_account" "example" {
  name                     = var.base_sa_name
  resource_group_name      = azurerm_resource_group.sarg.name
  location                 = azurerm_resource_group.sarg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "Development"
  }
}
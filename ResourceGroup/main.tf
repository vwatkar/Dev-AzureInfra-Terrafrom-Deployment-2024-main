resource "azurerm_resource_group" "vmrg" {
  name     = "${var.base_name}RG"
  location = var.location
}
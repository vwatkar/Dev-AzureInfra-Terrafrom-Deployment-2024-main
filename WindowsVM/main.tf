resource "azurerm_network_interface" "nic" {
  name                = "${var.VM_Name}-NIC"
  location            = var.VM_Location
  resource_group_name = var.VM_RG_Name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = var.subnetid
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_windows_virtual_machine" "example" {
  name                = var.VM_Name
  resource_group_name = var.VM_RG_Name
  location            = var.VM_Location
  size                = "Standard_F2"
  admin_username      = "adminuser"
  admin_password      = "Pa55w0rd@123456789"
  network_interface_ids = [
    azurerm_network_interface.nic.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
  }
}
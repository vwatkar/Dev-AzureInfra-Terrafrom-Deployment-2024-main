terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.10.0"
    }
  }
}
terraform {
  backend "azurerm" {
    resource_group_name  = "Dev-TFState-RG01"
    storage_account_name = "devtfstatefile010101"
    container_name       = "tfstate"
    key                  = "dev.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}

  client_id                   = "b9cd4882-9e02-4338-bc82-cb368abf58d2"
  client_certificate_password = "eac8Q~uMN4ZKH9X8~RsiZ5GPDFe.8e42GH_Pfbe~"
  tenant_id                   = "464ddb6f-b2cb-4867-a03c-cfdde7221d1b"
  subscription_id             = "37d9a058-e153-44ec-bd3d-4353dd3c9359"

}

module "ResourceGroup" {
  source    = "./ResourceGroup"
  base_name = "Dev"
  location  = "West US"

}

module "StorageAccount" {
  source           = "./StorageAccount"
  base_sa_rg_name  = "Dev-SA"
  base_sa_name     = "devsa17112024"
  base_sa_location = "West US"

}

module "VNET" {
  source                 = "./VNET"
  base_vnet_rg_name      = "Dev-VNET"
  base_vnet_name         = "Dev-VNET"
  base_vnet_location     = "West US"
  base_vnet_nsg_name     = "Dev-NSG"
  base_vnet_subnet1_name = "MGMT"
  base_vnet_subnet2_name = "Web"

}

module "WindowsVM" {
  source      = "./WindowsVM"
  VM_RG_Name  = module.ResourceGroup.RG_Name_Out
  VM_Location = module.ResourceGroup.RG_Location_Out
  VM_Name     = "DC001"
  subnetid    = module.VNET.Subnet1_ID

}
variable "base_vnet_rg_name" {
    type = string
    description = "Base Name for the VNET RG"
}

variable "base_vnet_nsg_name" {
    type = string
    description = "Base Name for the VNET NSG"
}

variable "base_vnet_name" {
    type = string
    description = "Base Name for the VNET"
}

variable "base_vnet_subnet1_name" {
    type = string
    description = "Base Name for the subnet1"
}

variable "base_vnet_subnet2_name" {
    type = string
    description = "Base Name for the subnet2"
}

variable "base_vnet_location" {
    type = string
    description = "The location of the VNET"
  
}
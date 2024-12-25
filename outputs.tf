output "RGName_Out" {
  description = "VM RG Name"
  value       = module.ResourceGroup.RG_Name_Out

}

output "SAName_Out" {
  description = "SA Name"
  value       = module.StorageAccount.SA_Name_Out

}

output "VNET_Out" {
  description = "VNET ID Value"
  value       = module.VNET.VNET_Name_Out

}

output "Subnet1_Out" {
  description = "VNET ID Value"
  value       = module.VNET.Subnet1_ID

}

output "Subnet2_Out" {
  description = "VNET ID Value"
  value       = module.VNET.Subnet2_ID

}


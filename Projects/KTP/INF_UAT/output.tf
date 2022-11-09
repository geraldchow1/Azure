output "rg" {
  value = module.RG.rg_name
}
output "location" {
  value = upper(module.RG.rg_location)
}

output "vnet" {
  value = module.VNET.vnet_name
}

output "vnetid" {
  value = module.VNET.vnet_id
}
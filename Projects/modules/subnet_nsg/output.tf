output "subnet_names" {
  value = { for s in azurerm_subnet.subnet : s.name => s.id }
}

output "subnet_ids" {
  description = "List of IDs of subnets"
  value       = [for s in azurerm_subnet.subnet : s.id]
}

output "subnet_address_prefixes" {
  description = "List of address prefix for subnets"
  value       = [for s in azurerm_subnet.subnet : s.address_prefixes]
}

output "network_security_group_ids" {
  description = "List of Network security groups and ids"
  value       = [for n in azurerm_network_security_group.nsg : n.id]
}
output "rg_name" {
  description = "The Name of the newly created RG"
  value       = azurerm_resource_group.rg.name
}
output "rg_location" {
  description = "Resource Group Location"
  value = azurerm_resource_group.rg.location
}

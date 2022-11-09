resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  resource_group_name = var.resource_group_name
  location            = var.resource_group_location
  address_space       = [var.address_space]
  dns_servers         = var.dns_servers
  tags                = var.tags
}

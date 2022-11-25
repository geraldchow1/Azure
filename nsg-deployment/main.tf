resource "azurerm_network_security_group" "nsg_app" {
  name     = "${var.SUBNET_NAME}-nsg"
  location = var.LOCATION
  resource_group_name = data.azurerm_resource_group.app.name
}

 
resource "azurerm_network_security_rule" "app_nsg_app_rule1" {
  name                        = "AllowTP-Outbound"
  priority                    = 100
  direction                   = "Outbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "*"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = data.azurerm_resource_group.app.name
  network_security_group_name = azurerm_network_security_group.nsg_app.name
  
}



resource "azurerm_subnet_network_security_group_association" "subnet_app" {
     subnet_id = data.azurerm.subnet_id
     network_security_group_id = azurerm_subnet_network_security_group.nsg_app.id
}


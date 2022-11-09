resource "azurerm_subnet" "subnet" {
  for_each             = var.subnets
  name                 = "${var.vnet_name}-${each.key}-subnet"
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.vnet_name
  address_prefixes     = [each.value.subnet_address_prefix]
  service_endpoints    = lookup(each.value, "service_endpoints", [])
}

#---------------------------------------------------------------
# Network security group - NSG created for every subnet in VNet
#---------------------------------------------------------------
resource "azurerm_network_security_group" "nsg" {
  for_each            = var.subnets
  name                = "${var.vnet_name}-${each.key}-subnet-nsg"
  resource_group_name = var.resource_group_name
  location            = var.resource_group_location
  tags                = var.tags
  dynamic "security_rule" {
    for_each = concat(lookup(each.value, "nsg_inbound_rules", []), lookup(each.value, "nsg_outbound_rules", []))
    content {
      name                         = security_rule.value[0] == "" ? "Default_Rule" : security_rule.value[0]
      priority                     = security_rule.value[1]
      direction                    = security_rule.value[2] == "" ? "Inbound" : security_rule.value[2]
      access                       = security_rule.value[3] == "" ? "Allow" : security_rule.value[3]
      protocol                     = security_rule.value[4] == "" ? "Tcp" : security_rule.value[4]
      source_address_prefix        = security_rule.value[5]
      source_address_prefixes      = security_rule.value[6]
      source_port_range            = "*"
      destination_port_range       = security_rule.value[7]
      destination_port_ranges      = security_rule.value[8]
      destination_address_prefix   = security_rule.value[9]
      destination_address_prefixes = security_rule.value[10]
      description                  = security_rule.value[0] == "" ? "Default_Rule" : security_rule.value[0]
    }
  }
}

resource "azurerm_subnet_network_security_group_association" "nsg-assoc" {
  for_each                  = var.subnets
  subnet_id                 = azurerm_subnet.subnet[each.key].id
  network_security_group_id = azurerm_network_security_group.nsg[each.key].id
}

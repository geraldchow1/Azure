data "azurerm_client_config" "current" {}

data "azurerm_subscription" "current" {}

data "azurerm_subnet" "subnet" {
    name                 =var.SUBNET_NAME
    virtual_network_name = var.VNET_NAME
    resource_group_name  = var.RESOURCE_GROUP
}

data "azurerm_resource_group"  "app" {
    name = var.RESOURCE_GROUP
}



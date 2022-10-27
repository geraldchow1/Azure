
locals {
  rgsuffix = "RG" 
}

resource "azurerm_resource_group" "myRG" {
  name     = upper("test-${local.rgsuffix}")
  location = var.location
}

resource "azurerm_storage_account" "mySA" {
  name                     = var.sa_name
  location                 = azurerm_resource_group.myRG.location
  resource_group_name      = azurerm_resource_group.myRG.name
  account_replication_type = "LRS"
  account_tier             = var.account_tier
}





resource "azurerm_resource_group" "myRG" {
  name     = "rg1"
  location = var.location
}

resource "azurerm_resource_group" "anotherRG" {
  name     = "rg2"
  location = "West Europe"
  tags = {
    "mytag" = "test"
  }
}

resource "azurerm_storage_account" "mySA" {
  name                     = "mdfkjhffvghfvjhst544"
  location                 = azurerm_resource_group.myRG.location
  resource_group_name      = azurerm_resource_group.myRG.name
  account_replication_type = "LRS"
  account_tier             = "Standard"
}


data "azurerm_resource_group" "rginFA" {
  name     = "terraform-test"
  provider = azurerm.FirstAvenger
}

resource "azurerm_storage_account" "mySAinFA" {
  provider                 = azurerm.FirstAvenger
  name                     = "mdfkjhffvghfvjhst544fa"
  location                 = data.azurerm_resource_group.rginFA.location
  resource_group_name      = data.azurerm_resource_group.rginFA.name
  account_replication_type = "LRS"
  account_tier             = "Standard"
}

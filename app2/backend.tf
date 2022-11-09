terraform {
  # backend "local" {}
  backend "azurerm" {
    subscription_id      = "bb16a702-d369-49b8-9a3b-8317a8572ce4"
    resource_group_name  = "tf-backend-rg"
    storage_account_name = "tfbackendstate01"
    container_name       = "tfstates"
    key                  = "app2.terraform.tfstate"
  }
}

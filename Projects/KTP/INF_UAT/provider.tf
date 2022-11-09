#--------------------------------------------------------
#   Terraform Provider Information
#--------------------------------------------------------
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.15.0"
    }
  }
}
#--------------------------------------------------------
#   Provider and Provider specific Subscription values
#--------------------------------------------------------
provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}
terraform {
  required_version = ">= 1.1.7"


  required_providers {
    azurerm = {
        version = ">=2.71.0"
        source  = "hashicorp/azurerm"
    }
  }
}

provider "azurerm" {
    features {
      
    }
  
}
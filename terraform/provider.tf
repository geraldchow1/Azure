terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.28.0"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "2.29.0"
    }
    random = {
      version = "3.4.3"
    }
  }
}
provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
  skip_provider_registration = true

  subscription_id = "c8515022-4cc9-4ed5-a3fe-182e05d732d8"
}

provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
  skip_provider_registration = true
  alias = "FirstAvenger"
  subscription_id = "f7fac9e2-fc42-4f0e-b230-79bb10d49cbf"
}





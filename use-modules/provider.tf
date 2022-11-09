provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
  skip_provider_registration = true
  subscription_id = "c8515022-4cc9-4ed5-a3fe-182e05d732d8"
}






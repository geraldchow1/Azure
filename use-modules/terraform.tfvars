
key_vaults = {
  "kv-prod" = {
    rg_name  = "rg-prod-tf-core"
    location = "canadaeast"
    sku      = "standard"
  }
  "kv-uat" = {
    rg_name  = "rg-uat-tf-core"
    location = "canadacentral"
    sku      = "standard"
  }
}

rgs = {
  "rg-prod-tf-core" = {
    location = "canadaeast"
  }
  "rg-uat-tf-core" = {
    location = "canadacentral"
  }
  "rg-dev-tf-core" = {
    location = "canadaeast"
  }
}

tags = {
  "env" = "PROD"
}

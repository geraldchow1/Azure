# ----------------------------------------------------------------------------------
# THIS CODE AND INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND, 
# EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE IMPLIED WARRANTIES 
# OF MERCHANTABILITY AND/OR FITNESS FOR A PARTICULAR PURPOSE.
# ----------------------------------------------------------------------------------

#Create Resource Groups
module "resource_group" {
  source   = "../modules/rg"
  for_each = var.rgs
  name     = each.key
  location = lookup(each.value, "location", null)
}

#Create Azure KeyVaults
module "key_vault" {
  depends_on = [module.resource_group]
  source     = "../modules/kv"
  for_each   = var.key_vaults
  name       = each.key
  rg         = lookup(each.value, "rg_name", null)
  location   = lookup(each.value, "location", null)
  sku        = lookup(each.value, "sku", "standard")
  # tags       = lookup(each.value, "tags", null)
}

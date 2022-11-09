module "RG" {
  source                  = "../../modules/rg"
  resource_group_name     = var.rg_name
  resource_group_location = var.rg_location
  tags                    = var.rg_tags
}

module "VNET" {
  source                  = "../../modules/vnet"
  vnet_name               = local.vnetwork_name
  resource_group_name     = module.RG.rg_name
  resource_group_location = module.RG.rg_location
  address_space           = var.vnet_address_space
  dns_servers             = var.dns_servers
  tags                    = var.rg_tags
}

module "SNET" {
  source                  = "../../modules/subnet"
  resource_group_name     = module.RG.rg_name
  resource_group_location = module.RG.rg_location
  vnet_name               = module.VNET.vnet_name
  subnets                 = var.subnets
  tags                    = var.rg_tags
  depends_on              = [module.VNET]
}





module "resource_groups" {
  source          = "../modules/azurerm_resource_group"
  resource_groups = var.resource_groups
}

module "vnet" {
  source = "../modules/azurerm_networking"
  vnet   = var.vnet
}

module "public_ips" {
  source = "../modules/azurerm_public_ip"
  public_ip = var.public_ip
}



module "azurerm_compute" {
  source = "../modules/azurerm_compute"
  vms    = var.vms
}
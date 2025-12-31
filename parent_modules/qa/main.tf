module "resource_group" {
  source = "../../child_modules/azurerm_rg"
  rgs    = var.rgs

}

module "vnet" {
  depends_on = [module.resource_group]

  source = "../../child_modules/azurerm_vnet"
  vnets  = var.vnets
}

module "subnet" {
  depends_on = [module.vnet]
  source     = "../../child_modules/azurerm_subnet"
  subnets    = var.subnets
}

module "vms" {
  depends_on = [module.subnet]
  source     = "../../child_modules/azurerm_vm"
  vms        = var.vms

}
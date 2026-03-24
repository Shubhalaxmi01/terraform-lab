#resource group
module "rg-demo" {
  source = "./modules/rg"
  resource_group_name = var.rg_name
  location = var.location
}

#vnet and subnet
module "network-demo" {
  source = "./modules/network"
  vnet_name = var.vnet_name
  resource_group_name = module.rg-demo.resource_group_name
  location = var.location
  address_space = var.address_space
  subnet_name = var.subnet_name
  address_prefixes = var.address_prefixes
}

#public ip
module "public_ip" {
  source = "./modules/publicip"
  pip = var.pip_name
  resource_group_name = module.rg-demo.resource_group_name
  location = var.location
  sku = var.sku
  enabled = var.enabled
}

#nic
module "nic" {
  source = "./modules/nic"
  nic_name = var.nic_name
  resource_group_name = module.rg-demo.resource_group_name
  location = var.location
  subnet_id = module.network-demo.subnet_id
  private_ip_address_allocation = var.private_ip_address_allocation
  public_ip_address_id = module.public_ip.pip_id
}

#vm
module "linux_vm" {
  source = "./modules/vm"
  linux_vm_name = var.linux_vm_name
  resource_group_name = module.rg-demo.resource_group_name
  location = var.location
  size = var.size
  network_interface_ids = [module.nic.nic-id]

  admin_username = var.admin_username
  admin_password = var.admin_password

  image = var.image
  os_disk = var.os_disk
}
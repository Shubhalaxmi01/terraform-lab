#variable "resource_group_name" {}

resource "azurerm_virtual_network" "this" {
  name = var.vnet_name
  resource_group_name = var.resource_group_name
  location = var.location
  address_space = var.address_space

  #depends_on = [ azurerm_resource_group.this ]
}

resource "azurerm_subnet" "this" {
  name = var.subnet_name
  virtual_network_name = azurerm_virtual_network.this.name
  resource_group_name = var.resource_group_name
  address_prefixes = var.address_prefixes
}
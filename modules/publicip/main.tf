#variable "resource_group_name" {}

resource "azurerm_public_ip" "this" {
  name = var.pip
  resource_group_name = var.resource_group_name
  location = var.location
  count = var.enabled?1:0
  allocation_method = "Static"
  sku = var.sku

  #depends_on = [ azurerm_resource_group.this ]
}
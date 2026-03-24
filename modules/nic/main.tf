resource "azurerm_network_interface" "this" {
  name = var.nic_name
  resource_group_name = var.resource_group_name
  location = var.location
  
  ip_configuration {
    name = "ipconfig1"
    subnet_id = var.subnet_id
    private_ip_address_allocation = var.private_ip_address_allocation
    public_ip_address_id = var.public_ip_address_id
  }
}
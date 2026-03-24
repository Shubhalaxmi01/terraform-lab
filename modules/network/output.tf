output "vnet_name" {
  value = azurerm_virtual_network.this.name
}

output "subnet_name" {
  value = azurerm_subnet.this.name
}

output "subnet_id" {
  value = azurerm_subnet.this.id
}
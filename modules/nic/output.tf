output "nic-name" {
  value = azurerm_network_interface.this.name
}

output "nic-id" {
  value = azurerm_network_interface.this.id
}

output "nic-private-ip" {
  value = azurerm_network_interface.this.private_ip_address
}
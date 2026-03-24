output "pip_id" {
  value = azurerm_public_ip.this[0].id  
}

output "pip-address" {
  value = try( azurerm_public_ip.this[0].ip_address, null)
}
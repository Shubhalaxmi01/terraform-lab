rg_name = "rg-demo"
location = "canada central"
vnet_name = "vnet-demo"
address_space = [ "10.0.0.0/16" ]
subnet_name = "subnet-demo"
address_prefixes = [ "10.0.1.0/24" ]
pip_name = "pip-demo"
sku = "Standard"
enabled = true
nic_name = "nic-demo"
private_ip_address_allocation = "Dynamic"
linux_vm_name = "vm-demo"
size = "Standard_B1s"
admin_username = "azureuser"
admin_password = "azureuser"
image = {
  publisher = "Canonical"
  offer = "UbuntuServer"
  sku = "18.04-LTS"
  version = "latest"
}
os_disk = {
  caching = "ReadWrite"
  storage_account_type = "Standard_LRS"
  disk_size_gb = 30
}
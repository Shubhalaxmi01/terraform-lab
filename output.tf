output "rg_name" {
  value = module.rg-demo.resource_group_name
}

output "vnet_name" {
  value = module.network-demo.vnet_name
}

output "subnet_name" {
  value = module.network-demo.subnet_name
}

output "pip" {
  value = module.public_ip.pip-address
}

output "nic_private_ip" {
  value = module.nic.nic-private-ip
}

output "linux_vm_id" {
  value = module.linux_vm.vm_id
}

output "linux_vm_private_ip" {
  value = module.linux_vm.private_ip
}
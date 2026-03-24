resource "azurerm_linux_virtual_machine" "this" {
  name = var.linux_vm_name
  resource_group_name = var.resource_group_name
  location = var.location
  size = var.size
  network_interface_ids = var.network_interface_ids

  admin_username = var.admin_username
  disable_password_authentication = false
  admin_password = var.admin_password

  source_image_reference {
    publisher = var.image.publisher
    offer = var.image.offer
    sku = var.image.sku
    version = var.image.version
  }

  os_disk {
    caching = var.os_disk.caching
    storage_account_type = var.os_disk.storage_account_type
    disk_size_gb = var.os_disk.disk_size_gb
  }

  boot_diagnostics {}
}
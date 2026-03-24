#rg
variable "rg_name" {
  type = string
}

variable "location" {
  type = string
}

#vnet
variable "vnet_name" {
  type = string
}

variable "address_space" {
  type = set(string)
}

#subnet
variable "subnet_name" {
  type = string
}

variable "address_prefixes" {
  type = list(string)
}

#pip
variable "pip_name" {
  type = string
}

variable "sku" {
  type = string
}

variable "enabled" {
  type = bool
}

#nic
variable "nic_name" {
  type = string
}

variable "private_ip_address_allocation" {
  type = string
}

#vm
variable "linux_vm_name" {
  type = string
}

variable "size" {
  type = string
}

variable "admin_username" {
  type = string
}

variable "admin_password" {
  type = string
}

variable "image" {
  type = object({
    publisher = string
    offer = string
    sku = string
    version = string
  })
}

variable "os_disk" {
  type = object({
    caching = string
    storage_account_type = string
    disk_size_gb = number
  })
}
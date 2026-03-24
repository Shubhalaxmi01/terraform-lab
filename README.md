This repository contains a modular Terraform configuration for deploying Azure infrastructure. It demonstrates best practices in organizing Terraform code into reusable modules for scalable, maintainable, and collaborative cloud infrastructure projects.

---

## Features

- **Modular design**: Each Azure resource type is organized into reusable modules.
- **Safe version control**: Sensitive files like `.terraform/` and state files are excluded via `.gitignore`.
- **Scalable architecture**: Modules can be reused across multiple projects or environments.
- **Clear separation of concerns**: Root configuration wires together all modules.

---

## Repository Structure

## Repository Structure

```
modules/
├── network/       # Virtual networks and subnets
├── nic/           # Network interfaces
├── publicip/      # Public IP addresses
├── rg/            # Resource groups
└── vm/            # Virtual machines

main.tf             # Root Terraform configuration
providers.tf        # Provider configuration (AzureRM)
variables.tf        # Input variables
terraform.tfvars    # Environment-specific variable values
output.tf           # Output definitions
.gitignore          # Excludes sensitive files
```

---

## Prerequisites

Before deploying, ensure the following are installed and configured:

- Terraform
- Azure CLI
- Appropriate Azure subscription permissions to create resources

---

## Getting Started

### Initialize Terraform
terraform init

### Validate Deployment
terraform validate

### Plan the Deployment
terraform plan

### Apply the Deployment
terraform apply

### Destroy the Deployment
terraform destroy

---

## Module Overview

### Resource Group (rg)
Creates an Azure Resource Group.  
Inputs: `name`, `location`  
Outputs: `resource_group_name`, `resource_group_id`

### Network (network)
Creates a Virtual Network and subnets.  
Inputs: `vnet_name`, `address_space`, `subnets`  
Outputs: `vnet_id`, `subnet_ids`

### Network Interface (nic)
Creates network interfaces for VMs.  
Inputs: `nic_name`, `subnet_id`, `public_ip_id`  
Outputs: `nic_id`

### Public IP (publicip)
Creates public IP addresses for VMs.  
Inputs: `name`, `allocation_method`  
Outputs: `public_ip_id`

### Virtual Machine (vm)
Creates virtual machines in a given resource group and network.  
Inputs: `vm_name`, `vm_size`, `image`, `nic_id`  
Outputs: `vm_id`, `vm_public_ip`

---

## Security & Best Practices

- `.terraform/`, `.tfstate`, `.tfstate.backup`, and `.terraform.lock.hcl` are ignored to avoid exposing sensitive information.  
- Consider using **remote state backends** (e.g., Azure Storage) when collaborating in teams.  

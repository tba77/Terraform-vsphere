# Terraform Vmware Vsphere

Terraform scripts to deploy virtual machines on vmware vsphere. 
Provider and resources and put in separate files. 

## Usage

### Install Terraform

To install terraform go to hashicorp website and follow the get started tuorial basically it's very simple you have just to download terraform binary file, save it in one of your $PATH directories and it's ready

### Variables

Just replace each value with your own configuration 

```
srvX_vm_name                     = "VM_NAME"
srvX_vm_cpus                     = "VCPU_NUMBER"
srvX_vm_cores                    = "CPU_CORE_NUMBER"
srvX_vm_memory                   = "MEMORY SIZE IN MB"
srvX_vm_domain_name              = "YOUR DOMAIN NAME"
srvX_instances                   = "NUMBER OF VM INSTANCES TO DEPLOY"
srvX_vm_swap_size                = "SWAP SIZE FOR RESIZING DISK SCRIPT"
vm_network_type                     = ["NETWORK CARD TYPE vmxnet3 or E1000","NETWORK CARD TYPE 2"]
network                          = { "PORT GROUP NAME" = ["IP ADDRESS 1", "IP ADDRESS 2"]  
                                    "PORT GROPU NAME2" = ["IP ADDRESS 1", "IP ADDRESS 2"]
                                    }
vm_network_cidr                  = ["NETWORK MASK CIDR"] # Comment if you use DHCP
srvX_vm_disk_size                = "DISK SIZE IN GIGABYTE"
srvX_vm_io_limit                 = "IOPS LIMIT"
# srvX_vm_disk_size2              = "DISK2_SIZE"
# srvX_vm_io_limit2               = "DISK2_IOPS_LIMIT"
# srvX_vm_ip_address2             = "YOUR_SERVER_IP2"
# vm_network_cidr2                = "CIDR_NETMASK2"
# srvX_vm_ip_address3             = "YOUR_SERVER_IP3"
# vm_network_cidr3                = "CIDR_NETMASK3"
vm_default_gateway               = "DEFAULT GATEWAY"
# vm_dns_server                   = "YOUR_PRIMARY_DNS"
# vm_dns_server2                  = "YOUR_SECONDARY_DNS"
vm_folder_name                   = "YOUR VM FOLDER"
vm_host_password                 = "TEMPLATE PASSWORD"
vm_host_password2                = "NEW PASSWORD TO APPLY"
ansible_inventory_path           = "/YOUR/PATH/TO/inventory.yml" 
ansible_password_script_path     = "/YOUR/PATH/TO/Ansible/updatePassword.yml"
ansible_remote_login             = "root"
ansible_user_name                = "root"
ansible_resizedisk_script_path   = "/YOUR/PATH/TO//ResizeLinuxDisks.yml"
ansible_update_os_script_path    = "/YOUR/PATH/TO/dist-upgrade.yml"
ansible_regen_ssh_script_path    = "/YOUR/PATH/TO/sshkeygen.yml"
```

### Deploy your infrastructure

```
cd /your/terraform/files/directory 
terraform init
terraform plan -out someFile //-out is not mandatory
terraform apply someFile //someFile is the same file generated with -out argument not mandatory either
```

### Ansible scripts

Ansible scripts are used to resize disk as used template has 5G of disk space, update OS, change root password and regenerate ssh-keys 

### Use Gitlab as terraform backend state

When a team share the same infrastructure configuration, the infrastructure state must be shared between team members this could be done on different clouds but here we will use gitlab as a shared state backend

first create a file for example `backend.tf` with the following

```
terraform {
    backend "http" {
    }
}
```
On provider and state initialization add the following arguments where:
* STATE-NAME: a given name to your state file
* PROJECT-ID : The ID given by gitlab
* API-TOKEN: the token generated at User's preferences --> Acces Token with API scope

```
terraform init \
    -backend-config="address=https://gitlab.com/api/v4/projects/<PROJECT-ID>/terraform/state/<STATE-NAME>" \
    -backend-config="lock_address=https://gitlab.com/api/v4/projects/<PROJECT-ID>/terraform/state/<STATE-NAME>/lock" \
    -backend-config="unlock_address=https://gitlab.com/api/v4/projects/<PROJECT-ID>/terraform/state/<STATE-NAME>/lock" \
    -backend-config="username=USERNAME" \
    -backend-config="password=API-TOKEN" \
    -backend-config="lock_method=POST" \
    -backend-config="unlock_method=DELETE" \
    -backend-config="retry_wait_min=5"
```
Or you can add all configuration into the `backend.tf` file

```
terraform {
    backend "http" {
        address = "https://gitlab.com/api/v4/projects/<PROJECT-ID>/terraform/state/<STATE-NAME>"
        lock_address = "https://gitlab.com/api/v4/projects/<PROJECT-ID>/terraform/state/<STATE-NAME>/lock"
        unlock_address = "https://gitlab.com/api/v4/projects/<PROJECT-ID>/terraform/state/<STATE-NAME>/lock"
        lock_method = "POST"
        unlock_method = "DELETE"
        username = "USERNAME"
        password = "API-TOKEN"
        retry_wait_min = 5
        skip_cert_verification = true
    }
}
```
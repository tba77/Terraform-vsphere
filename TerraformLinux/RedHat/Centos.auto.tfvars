srvX_vm_name                     = "SERVER_NAME"
srvX_vm_cpus                     = "VCPU_NUMBER"
srvX_vm_cores                    = "CORE_NUMBER"
srvX_vm_memory                   = "MEMORY_SIZE_IN_MEGABYTE"
srvX_vm_domain_name              = "YOUR_DOMAIN"
srvX_vm_ip_address               = "YOUR_SERVER_IP"     #Comment if you use DHCP
vm_network_cidr                  = "CIDR_NETMASK"   #Comment if you use DHCP
srvX_vm_disk_size                = "DISK_SIZE_IN_GIGABYTE"
srvX_vm_io_limit                 = "DISK_IOPS_LIMIT"
#srvX_vm_disk_size2              = "DISK2_SIZE"
#srvX_vm_io_limit2               = "DISK2_IOPS_LIMIT"
#srvX_vm_ip_address2             = "YOUR_SERVER_IP2"
#vm_network_cidr2                = "CIDR_NETMASK2"
#srvX_vm_ip_address3             = "YOUR_SERVER_IP3"
#vm_network_cidr3                = "CIDR_NETMASK3"
vm_default_gateway               = "YOUR_DEFAULT_GATEWAY"
#vm_dns_server                   = "YOUR_PRIMARY_DNS"
#vm_dns_server2                  = "YOUR_SECONDARY_DNS"
vm_folder_name                   = "$FOLDER_PATH"
vm_host_password                 = "TEMPLATE_PASSWORD"
vm_host_password2                = "YOUR_PASSWORD"
ansible_inventory_path           = "YOUR_ANSIBLE_INVENTORY_PATH" 
ansible_password_script_path     = "YOUR_PATH/updatePassword.yml"
ansible_remote_login             = "YOUR_SSH_LOGIN"
ansible_user                     = "USER_WHOSE_PASSWORD_WILL_BE_MODIFIED"
ansible_resizedisk_script_path   = "YOUR_PATH/ResizeLinuxDisks.yml"
        

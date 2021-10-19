srvX_vm_name                     = "VM_NAME"
srvX_vm_cpus                     = "VCPU_NUMBER"
srvX_vm_cores                    = "CPU_CORE_NUMBER"
srvX_vm_memory                   = "MEMORY SIZE IN MB"
srvX_vm_domain_name              = "YOUR DOMAIN NAME"
srvX_instances                   = "NUMBER OF VM INSTANCES TO DEPLOY"
vm_network_type                  = ["NETWORK CARD TYPE vmxnet3 or E1000","NETWORK CARD TYPE 2"]
srvX_network                          = { "PORT GROUP NAME" = ["IP ADDRESS 1", "IP ADDRESS 2"]  
                                    "PORT GROPU NAME2" = ["IP ADDRESS 1", "IP ADDRESS 2"]
                                    }
vm_network_cidr                  = ["NETWORK MASK CIDR"] # Comment if you use DHCP
srvX_vm_disk_size                = "DISK SIZE IN GIGABYTE"
srvX_vm_io_limit                 = "IOPS LIMIT"
# srvX_vm_disk_size2             = "DISK2_SIZE"
# srvX_vm_io_limit2              = "DISK2_IOPS_LIMIT"
# srvX_vm_ip_address2            = "YOUR_SERVER_IP2"
# vm_network_cidr2               = "CIDR_NETMASK2"
# srvX_vm_ip_address3            = "YOUR_SERVER_IP3"
# vm_network_cidr3               = "CIDR_NETMASK3"
vm_default_gateway               = "DEFAULT GATEWAY"
# vm_dns_server                   = "YOUR_PRIMARY_DNS"
# vm_dns_server2                  = "YOUR_SECONDARY_DNS"
vm_folder_name                   = "YOUR VM FOLDER"
srvX_vm_host_name                 = "MSWINDOWS_HOST_NAME"
ansible_inventory_path           = "/YOUR/PATH/TO/inventory.yml" 
ansible_password_script_path     = "/YOUR/PATH/TO/Ansible/updatePassword.yml"
ansible_remote_login             = "root"
ansible_user_name                = "root"
ansible_resizedisk_script_path   = "/YOUR/PATH/TO//ResizeLinuxDisks.yml"
ansible_update_os_script_path    = "/YOUR/PATH/TO/dist-upgrade.yml"



srvX_vm_name               = "YOUR_VM_NAME"
srvX_vm_cpus               = "NUMBER_OF_VCPU"
srvX_vm_cores              = "CORE_NUMBER"
srvX_vm_memory             = "MEMORY_IN_MEGABYTE"
srvX_vm_domain_name        = "YOUR_DOMAIN_NAME"
srvX_instances             = "NUMBER_OF_MV_INSTANCES"
vm_network_type            = ["ADAPTER_TYPE"]
srvX_network               = { "YOUR_PORT_GROUP1" = ["IP_ADDR_INSTANCE_1", "IP_ADDR_INSTANCE_2"]  
                                "YOUR_PORT_GROUP2" = ["IP_ADDR2_INSTANCE_1","IP_ADDR2_INSTANCE_2",]
                            }
vm_network_cidr            = ["YOUR_NET_CIDR"] # Comment if you use DHCP
srvX_vm_disk_size          = "YOUR_DISK_SIZE_IN_GIGABYTE"
srvX_vm_io_limit           = "IOPS_LIMIT"
#srvX_vm_disk_size2        = "DISK2_SIZE"
#srvX_vm_io_limit2         = "DISK2_IOPS_LIMIT"
#srvX_vm_ip_address2       = "YOUR_SERVER_IP2"
#vm_network_cidr2          = "CIDR_NETMASK2"
#srvX_vm_ip_address3       = "YOUR_SERVER_IP3"
#vm_network_cidr3          = "CIDR_NETMASK3"
vm_default_gateway         = "YOUR_DEFAULT_GATEWAY"
#vm_dns_server             = "YOUR_PRIMARY_DNS"
#vm_dns_server2            = "YOUR_SECONDARY_DNS"
vm_folder_name             = "YOUR_FOLDER_PATH"
srvX_vm_host_name          = "WINDOWS_HOST_NAME"
srvX_vm_admin_password     = "ADMINISTRATOR_PASSWORD"
ansible_inventory_path     = "/PATH/TO/YOUR/INVENTORY"
ansible_resize_disk_path   = "/PATH/TO/RESIZE/DISK/SCRIPT"

variable "srvX_vm_name" {
  description = "VMware vSphere Virtual Machine Name"
}

variable "srvX_vm_cpus" {
  description = "Number of vCPUs"
}

variable "srvX_vm_cores" {
  description = "Number of cores per CPU"
}


variable "srvX_vm_memory" {
  description = "Amount of memory assigned to the virtual machine"
}

variable "srvX_vm_domain_name" {
  description = "Virtual machine domain name"
}

variable "srvX_vm_ip_address" {
  description = "Virtual machine IP address"
}

variable "srvX_vm_disk_size" {
  description = "Disk size"
}

#variable "srvX_vm_ip_address2" {
#  description = "Virtual machine IP address"
#}

#variable "srvX_vm_ip_address3" {
#  description = "Virtual machine IP address"
#}

variable "srvX_vm_io_limit" {
  description = "Disk IOPS limits"

}

variable "srvX_vm_host_name" {
  description = "Windows host name"
}

variable "srvX_vm_admin_password" {
  description = "Administrtor password for windows"
}

variable "ansile_folder" {
  description = "Ansible work directory"
}

variable "inventory_path" {
  description = "Inventory PATH"
}
variable "srvX_vm_name" {
  description = "VMware vSphere Virtual Machine Name"
}

variable "srvX_instances" {
  description = "Number of VM instances"
  default = 1
}

variable "srvX_vm_cpus" {
  description = "Number of vCPUs"
  default     = "2"
}

variable "srvX_vm_cores" {
  description = "Number of cores"
}

variable "srvX_vm_memory" {
  description = "Amount of memory assigned to the virtual machine"
}

variable "srvX_vm_domain_name" {
  description = "Virtual machine domain name"
}

variable "srvX_network" {
  description = "Define PortGroup and IPs for each VM"
  type        = map(list(string))
  default     = {}
}

# variable "srvX_network2" {
#   description = "Define PortGroup and IPs for each VM"
#   type        = map(list(string))
#   default     = {}
# }

# variable "srvX_network3" {
#   description = "Define PortGroup and IPs for each VM"
#   type        = map(list(string))
#   default     = {}
# }

variable "srvX_vm_disk_size" {
  description = "Disk size"
}

variable "srvX_vm_io_limit" {
  description = "Disk IOPS limitation"
}

variable "srvX_vm_swap_size" {
  description = "Disk swap size for linux VM"
  default = "4g"
}

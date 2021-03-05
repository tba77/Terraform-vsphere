variable "srvX_vm_name" {
  description = "VMware vSphere Virtual Machine Name"
}

variable "srvX_vm_cpus" {
  description = "Number of vCPUs"
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

variable "srvX_vm_ip_address" {
  description = "Virtual machine IP address"
}

variable "srvX_vm_disk_size" {
  description = "Disk size"
}

variable "srvX_vm_io_limit" {
  description = "Disk IOPS limitation"
}

variable "ansible_inventory_path" {
  description = "Path to ansible inventory"
}

variable "ansible_password_script_path" {
  description = "Path to Update Password Script"
}

variable "ansible_remote_login" {
  description = "Rmote host login"
}

variable "ansible_user_name" {
  description = "User whose password will change"
}

variable "ansible_resizedisk_script_path" {
  description = "Path to ansible Resize Disks Script"
}
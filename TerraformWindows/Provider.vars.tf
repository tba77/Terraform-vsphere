variable "vsphere_user" {
  description = "vSphere user"
}

variable "vsphere_password" {
  description = "vsphere password"
  default     = "YOUR_VSPHERE_USER_PASSWORD"  #it's not safe to input the password here I have to update and crypt passwords
}

variable "vsphere_server" {
  description = "vsphere server"
}

variable "vsphere_datacenter" {
  description = "VMware vSphere Datacenter Name"
}

variable "vsphere_cluster" {
  description = "VMware vSphere Computer Cluster Name"
}

variable "vsphere_pool" {
  description = "Vsphere Pool"
}

# variable "vsphere_network" {
#  description = "VMware vSphere Network Name"
# }

variable "network" {
  description = "Define PortGroup and IPs for each VM"
  type        = map(list(string))
  default     = {}
}

# variable "network2" {
#   description = "Define PortGroup and IPs for each VM"
#   type        = map(list(string))
#   default     = {}
# }

# variable "network3" {
#   description = "Define PortGroup and IPs for each VM"
#   type        = map(list(string))
#   default     = {}
# }

variable "vsphere_datastore" {
  description = "VMware vSphere Datastore"
}

#variable "vsphere_datastore2" {
#  description = "VMware vSphere Datastore"
#}

#variable "vsphere_datastore3" {
#  description = "VMware vSphere Datastore"
#}

variable "vsphere_template" {
  description = "VMware Template"
}

#variable "vsphere_template2" {
#  description = "VMware Template"
#}

#variable "vsphere_template3" {
#  description = "VMware Template"
#}

variable "vm_default_gateway" {
  description = "Virtual machine default gateway"
}

variable "vm_network_type" {
  description = "Define network type for each network interface."
  type        = list(any)
  default     = null
}

variable "vm_network_cidr" {
  description = "ipv4 Subnet mask."
  type        = list(any)
  default     = ["24"]
}

variable "vm_dns_server" {
  description = "Virtual machine dns server"
  default     = "1.1.1.1"
}

variable "vm_dns_server2" {
  description = "Virtual machine secondary dns server"
  default     = "8.8.8.8"
}

variable "vm_folder_name" {
  description = "VM installation folder"
}

variable "vm_host_name" {
  description = "Windows host name"
}

variable "vm_host_password" {
  description = "Administrtor password for windows"
}

variable "vm_host_password2" {
  description = "New password for linux servers after install"
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

variable "ansible_update_os_script_path" {
  description = "Ansible playbook update os path"
}
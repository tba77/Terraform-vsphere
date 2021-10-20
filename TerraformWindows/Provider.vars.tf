variable "vsphere_user" {
  description = "vSphere user"
}

variable "vsphere_password" {
  description = "vsphere password"
  default     = "YOUR_VSPHERE_PASSWORD"  #it's not safe to tape the password here I have to update and crypt passwords
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

# variable "vsphere_network" {
#   description = "VMware vSphere Network Name"
# }

#variable "vsphere_network2" {
#  description = "VMWare secend Network Name"
#}

#variable "vsphere_network3" {
#  description = "VMWare secend Network Name"
#}

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
  description = "VM installatino folder"
}

variable "ansible_resize_disk_path" {
  description = "Ansible work directory"
}

variable "ansible_inventory_path" {
  description = "Inventory PATH"
}
variable "vsphere_user" {
  description = "vSphere user"
}

variable "vsphere_password" {
  description = "vsphere password"
  default     = "$vsphere_password"
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

variable "vsphere_network" {
  description = "VMware vSphere Network Name"
}

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

variable "vm_network_cidr" {
  description = "Virtual machine network cidr"
  default     = 29
}

variable "vm_dns_server" {
  description = "Virtual machine dns server"
}

variable "vm_folder_name" {
  description = "VM installatino folder"
}

variable "vm_host_name" {
  description = "Windows host name"
}

variable "vm_admin_password" {
  description = "Administrtor password for windows"
}

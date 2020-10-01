resource "vsphere_virtual_machine" "$srvX" {
  name                        = var.$srvX_vm_name
  folder                      = var.vm_folder_name
  wait_for_guest_net_routable = false
  wait_for_guest_net_timeout  = 60
  num_cpus                    = var.$srvX_vm_cpus
  num_cores_per_socket        = var.$srvX_vm_cores
  cpu_hot_add_enabled         = true
  cpu_hot_remove_enabled      = true
  memory                      = var.$srvX_vm_memory
  memory_hot_add_enabled      = true
  resource_pool_id            = data.vsphere_compute_cluster.cluster.resource_pool_id
  datastore_id                = data.vsphere_datastore.datastore.id

  guest_id  = data.vsphere_virtual_machine.template.guest_id
  scsi_type = data.vsphere_virtual_machine.template.scsi_type

  network_interface {
    network_id   = data.vsphere_network.network.id
    adapter_type = data.vsphere_virtual_machine.template.network_interface_types[0]
  }

  #network_interface {
  #  network_id   = data.vsphere_network.network2.id
  #  adapter_type = data.vsphere_virtual_machine.template.network_interface_types[0]
  #}

  #network_interface {
  #  network_id   = data.vsphere_network.network3.id
  #  adapter_type = data.vsphere_virtual_machine.template.network_interface_types[0]
  #}

  disk {
    label = "disk0"
    size  = var.$srvX_vm_disk_size
    #    size             = data.vsphere_virtual_machine.template.disks.0.size
    eagerly_scrub    = data.vsphere_virtual_machine.template.disks.0.eagerly_scrub
    thin_provisioned = data.vsphere_virtual_machine.template.disks.0.thin_provisioned
    io_limit         = var.$srvX_vm_io_limit
  }

  #disk {
  #  label            = "disk1"
  #  size             = $disk1_size
  #  unit_number      = 1
  #  datastore_id     = data.vsphere_datastore.datastore.id
  #  thin_provisioned = true
  #  io_limit         = 250
  #}

  #disk {
  #  label            = "disk2"
  #  size             = $disk2_size
  #  unit_number      = 2
  #  datastore_id     = data.vsphere_datastore.datastore2.id
  #  thin_provisioned = true
  #  io_limit         = 100
  #}

  clone {
    template_uuid = data.vsphere_virtual_machine.template.id

    customize {
      windows_options {
        computer_name  = var.$srvX_vm_host_name
        admin_password = var.$srvX_vm_admin_password
        full_name      = "Administrateur"
      }

      network_interface {
        ipv4_address = var.$srvX_vm_ip_address
        ipv4_netmask = var.vm_network_cidr
      }

      #network_interface {
      #  ipv4_address = var.$srvX_vm_ip_address2
      #  ipv4_netmask = var.vm_network_cidr2
      #}

      #network_interface {
      #  ipv4_address = var.$srvX_vm_ip_address3
      #  ipv4_netmask = var.vm_network_cidr3
      #}
      dns_server_list = [var.vm_dns_server, var.vm_dns_server2]
      ipv4_gateway    = var.vm_default_gateway
    }
  }
}

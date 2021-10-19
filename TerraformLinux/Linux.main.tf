resource "vsphere_virtual_machine" "srvX" {
  count                       = var.srvX_instances
  name                        = "${var.srvX_vm_name}-Srv${count.index + 1}"
  folder                      = var.vm_folder_name
  wait_for_guest_net_routable = false
  wait_for_guest_net_timeout  = 60
  num_cpus                    = var.srvX_vm_cpus
  num_cores_per_socket        = var.srvX_vm_cores
  cpu_hot_add_enabled         = true
  cpu_hot_remove_enabled      = true
  memory                      = var.srvX_vm_memory
  memory_hot_add_enabled      = true
  resource_pool_id            = data.vsphere_compute_cluster.cluster.resource_pool_id
  datastore_id                = data.vsphere_datastore.datastore.id

  guest_id  = data.vsphere_virtual_machine.template.guest_id
  scsi_type = data.vsphere_virtual_machine.template.scsi_type

  dynamic "network_interface" {
    for_each = keys(var.network) #data.vsphere_network.network[*].id #other option
    content {
      network_id   = data.vsphere_network.network[network_interface.key].id
      adapter_type = var.vm_network_type != null ? var.vm_network_type[network_interface.key] : data.vsphere_virtual_machine.template.network_interface_types[0]
    }
  }

  disk {
    label = "disk0"
    size  = var.srvX_vm_disk_size
    #    size             = data.vsphere_virtual_machine.template.disks.0.size
    eagerly_scrub    = data.vsphere_virtual_machine.template.disks.0.eagerly_scrub
    thin_provisioned = data.vsphere_virtual_machine.template.disks.0.thin_provisioned
    io_limit         = var.srvX_vm_io_limit
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
      linux_options {
        host_name = var.srvX_vm_name
        domain    = var.srvX_vm_domain_name
      }

      dynamic "network_interface" {
        for_each = keys(var.network)
        content {
          ipv4_address = var.network[keys(var.network)[network_interface.key]][count.index]
          ipv4_netmask = "%{if length(var.vm_network_cidr) == 1}${var.vm_network_cidr[0]}%{else}${var.vm_network_cidr[network_interface.key]}%{endif}"
        }
      }
      dns_server_list = [var.vm_dns_server, var.vm_dns_server2]
      ipv4_gateway    = var.vm_default_gateway
    }
  }

  provisioner "local-exec" {
    command = <<EOT
      ansible-playbook -i ${var.ansible_inventory_path} ${var.ansible_password_script_path} --extra-vars "remote_host=${var.srvX_vm_name}-Srv${count.index + 1} newpassword=${var.vm_host_password2} remote_login=${var.ansible_remote_login} user_name=${var.ansible_user_name}"
      ansible-playbook -i ${var.ansible_inventory_path} ${var.ansible_resizedisk_script_path} --extra-vars "remote_host=${var.srvX_vm_name}-Srv${count.index + 1} remote_login=${var.ansible_remote_login} swap_size=${var.srvX_vm_swap_size}"
      ansible-playbook -i ${var.ansible_inventory_path} ${var.ansible_update_os_script_path} --extra-vars "remote_host=${var.srvX_vm_name}-Srv${count.index + 1} remote_login=${var.ansible_remote_login}
    EOT
  }
}
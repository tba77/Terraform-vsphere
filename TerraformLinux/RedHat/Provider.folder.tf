resource "vsphere_folder" "folder" {

  path          = "YOUR_VSPHERE_VM_FOLDER"
  type          = "vm"
  datacenter_id = data.vsphere_datacenter.dc.id
}

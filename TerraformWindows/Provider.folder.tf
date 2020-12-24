resource "vsphere_folder" "folder" {

  path          = "YOUR_VSPHERE_FOLDER_PATH"
  type          = "vm"
  datacenter_id = data.vsphere_datacenter.dc.id
}

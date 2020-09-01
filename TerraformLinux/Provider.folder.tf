resource "vsphere_folder" "folder" {

  path          = "$FOLDER_PATH"
  type          = "vm"
  datacenter_id = data.vsphere_datacenter.dc.id
}

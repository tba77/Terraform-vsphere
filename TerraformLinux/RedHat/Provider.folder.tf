resource "vsphere_folder" "folder" {

  path          = "YOUR VM FOLDER NAME"
  type          = "vm"
  datacenter_id = data.vsphere_datacenter.dc.id
}

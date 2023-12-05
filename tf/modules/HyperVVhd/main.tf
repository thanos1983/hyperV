resource "hyperv_vhd" "vhd" {
  path                 = var.path
  block_size           = var.block_size
  logical_sector_size  = var.logical_sector_size
  parent_path          = var.parent_path
  physical_sector_size = var.physical_sector_size
  size                 = var.size
  source               = var.source
  source_disk          = var.source_disk
  source_vm            = var.source_vm
  vhd_type             = var.vhd_type

  dynamic "timeouts" {
    for_each = var.timeouts_block[*]
    content {
      create = timeouts.value.create
      read   = timeouts.value.read
      update = timeouts.value.update
      delete = timeouts.value.delete
    }
  }
}
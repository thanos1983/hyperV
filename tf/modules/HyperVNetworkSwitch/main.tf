resource "hyperv_network_switch" "network_switch" {
  name                                    = var.name
  allow_management_os                     = var.allow_management_os
  default_flow_minimum_bandwidth_absolute = var.default_flow_minimum_bandwidth_absolute
  default_flow_minimum_bandwidth_weight   = var.default_flow_minimum_bandwidth_weight
  default_queue_vmmq_enabled              = var.default_queue_vmmq_enabled
  default_queue_vmmq_queue_pairs          = var.default_queue_vmmq_queue_pairs
  default_queue_vrss_enabled              = var.default_queue_vrss_enabled
  enable_embedded_teaming                 = var.enable_embedded_teaming
  enable_iov                              = var.enable_iov
  enable_packet_direct                    = var.enable_packet_direct
  minimum_bandwidth_mode                  = var.minimum_bandwidth_mode
  net_adapter_names                       = var.net_adapter_names
  notes                                   = var.notes
  switch_type                             = var.switch_type

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
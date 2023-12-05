resource "hyperv_machine_instance" "machine_instance" {
  name                                    = var.name
  automatic_critical_error_action         = var.automatic_critical_error_action
  automatic_critical_error_action_timeout = var.automatic_critical_error_action_timeout
  automatic_start_action                  = var.automatic_start_action
  automatic_start_delay                   = var.automatic_start_delay
  automatic_stop_action                   = var.automatic_stop_action
  checkpoint_type                         = var.checkpoint_type

  dynamic "dvd_drives" {
    for_each = var.dvd_drives_blocks
    content {
      controller_location = dvd_drives.value.controller_location
      controller_number   = dvd_drives.value.controller_number
      path                = dvd_drives.value.path
      resource_pool_name  = dvd_drives.value.resource_pool_name
    }
  }

  dynamic_memory               = var.dynamic_memory
  generation                   = var.generation
  guest_controlled_cache_types = var.guest_controlled_cache_types

  dynamic "hard_disk_drives" {
    for_each = var.hard_disk_drives_blocks
    content {
      controller_type                 = hard_disk_drives.value.controller_type
      controller_number               = hard_disk_drives.value.controller_number
      controller_location             = hard_disk_drives.value.controller_location
      path                            = hard_disk_drives.value.path
      disk_number                     = hard_disk_drives.value.disk_number
      resource_pool_name              = hard_disk_drives.value.resource_pool_name
      support_persistent_reservations = hard_disk_drives.value.support_persistent_reservations
      maximum_iops                    = hard_disk_drives.value.maximum_iops
      minimum_iops                    = hard_disk_drives.value.minimum_iops
      qos_policy_id                   = hard_disk_drives.value.qos_policy_id
      override_cache_attributes       = hard_disk_drives.value.override_cache_attributes
    }
  }

  high_memory_mapped_io_space = var.high_memory_mapped_io_space
  integration_services        = var.integration_services
  lock_on_disconnect          = var.lock_on_disconnect
  low_memory_mapped_io_space  = var.low_memory_mapped_io_space
  memory_maximum_bytes        = var.memory_maximum_bytes
  memory_minimum_bytes        = var.memory_minimum_bytes
  memory_startup_bytes        = var.memory_startup_bytes

  dynamic "network_adaptors" {
    for_each = var.network_adaptors_blocks
    content {
      name                                       = network_adaptors.value.name
      allow_teaming                              = network_adaptors.value.allow_teaming
      device_naming                              = network_adaptors.value.device_naming
      dhcp_guard                                 = network_adaptors.value.dhcp_guard
      dynamic_ip_address_limit                   = network_adaptors.value.dynamic_ip_address_limit
      dynamic_mac_address                        = network_adaptors.value.dynamic_mac_address
      fix_speed_10g                              = network_adaptors.value.fix_speed_10g
      ieee_priority_tag                          = network_adaptors.value.ieee_priority_tag
      iov_interrupt_moderation                   = network_adaptors.value.iov_interrupt_moderation
      iov_queue_pairs_requested                  = network_adaptors.value.iov_queue_pairs_requested
      iov_weight                                 = network_adaptors.value.iov_weight
      ipsec_offload_maximum_security_association = network_adaptors.value.ipsec_offload_maximum_security_association
      is_legacy                                  = network_adaptors.value.is_legacy
      mac_address_spoofing                       = network_adaptors.value.mac_address_spoofing
      management_os                              = network_adaptors.value.management_os
      mandatory_feature_id                       = network_adaptors.value.mandatory_feature_id
      maximum_bandwidth                          = network_adaptors.value.maximum_bandwidth
      minimum_bandwidth_absolute                 = network_adaptors.value.minimum_bandwidth_absolute
      minimum_bandwidth_weight                   = network_adaptors.value.minimum_bandwidth_weight
      not_monitored_in_cluster                   = network_adaptors.value.not_monitored_in_cluster
      packet_direct_moderation_count             = network_adaptors.value.packet_direct_moderation_count
      packet_direct_moderation_interval          = network_adaptors.value.packet_direct_moderation_interval
      packet_direct_num_procs                    = network_adaptors.value.packet_direct_num_procs
      port_mirroring                             = network_adaptors.value.port_mirroring
      resource_pool_name                         = network_adaptors.value.resource_pool_name
      router_guard                               = network_adaptors.value.router_guard
      static_mac_address                         = network_adaptors.value.static_mac_address
      storm_limit                                = network_adaptors.value.storm_limit
      switch_name                                = network_adaptors.value.switch_name
      test_replica_pool_name                     = network_adaptors.value.test_replica_pool_name
      test_replica_switch_name                   = network_adaptors.value.test_replica_switch_name
      virtual_subnet_id                          = network_adaptors.value.virtual_subnet_id
      vlan_access                                = network_adaptors.value.vlan_access
      vlan_id                                    = network_adaptors.value.vlan_id
      vmmq_enabled                               = network_adaptors.value.vmmq_enabled
      vmmq_queue_pairs                           = network_adaptors.value.vmmq_queue_pairs
      vmq_weight                                 = network_adaptors.value.vmq_weight
      vrss_enabled                               = network_adaptors.value.vrss_enabled
      wait_for_ips                               = network_adaptors.value.wait_for_ips
      ip_addresses                               = network_adaptors.value.ip_addresses
    }
  }

  notes                  = var.notes
  path                   = var.path
  processor_count        = var.processor_count
  smart_paging_file_path = var.smart_paging_file_path
  snapshot_file_location = var.snapshot_file_location
  state                  = var.state
  static_memory          = var.static_memory

  dynamic "timeouts" {
    for_each = var.timeouts_block[*]
    content {
      create = timeouts.value.create
      read   = timeouts.value.read
      update = timeouts.value.update
      delete = timeouts.value.delete
    }
  }

  # Configure firmware
  dynamic "vm_firmware" {
    for_each = var.vm_firmware_block[*]
    content {
      console_mode                    = vm_firmware.value.console_mode
      enable_secure_boot              = vm_firmware.value.enable_secure_boot
      pause_after_boot_failure        = vm_firmware.value.pause_after_boot_failure
      preferred_network_boot_protocol = vm_firmware.value.preferred_network_boot_protocol
      secure_boot_template            = vm_firmware.value.secure_boot_template
      dynamic "boot_order" {
        for_each = vm_firmware.value.boot_order_blocks
        content {
          boot_type           = boot_order.value.boot_type
          controller_number   = boot_order.value.controller_number
          controller_location = boot_order.value.controller_location
        }
      }
    }
  }

  # Configure processor
  dynamic "vm_processor" {
    for_each = var.vm_processor_block[*]
    content {
      compatibility_for_migration_enabled               = vm_processor.value.compatibility_for_migration_enabled
      compatibility_for_older_operating_systems_enabled = vm_processor.value.compatibility_for_older_operating_systems_enabled
      enable_host_resource_protection                   = vm_processor.value.enable_host_resource_protection
      expose_virtualization_extensions                  = vm_processor.value.expose_virtualization_extensions
      hw_thread_count_per_core                          = vm_processor.value.hw_thread_count_per_core
      maximum                                           = vm_processor.value.maximum
      maximum_count_per_numa_node                       = vm_processor.value.maximum_count_per_numa_node
      maximum_count_per_numa_socket                     = vm_processor.value.maximum_count_per_numa_socket
      relative_weight                                   = vm_processor.value.relative_weight
      reserve                                           = vm_processor.value.reserve
    }
  }

  wait_for_ips_poll_period   = var.wait_for_ips_poll_period
  wait_for_ips_timeout       = var.wait_for_ips_timeout
  wait_for_state_poll_period = var.wait_for_state_poll_period
  wait_for_state_timeout     = var.wait_for_state_timeout
}
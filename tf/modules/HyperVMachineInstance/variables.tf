variable "name" {
  description = "Specifies the name of the switch to be created."
  type        = string
}

variable "automatic_critical_error_action" {
  description = "Specifies the action to take when the VM encounters a critical error, and exceeds the timeout duration specified by the AutomaticCriticalErrorActionTimeout cmdlet."
  type        = string
  validation {
    condition     = contains(["Pause", "None"], title(tostring(var.automatic_critical_error_action)))
    error_message = "Parameter must be \"Pause\" or \"None\"."
  }
  default = "Pause"
}

variable "automatic_critical_error_action_timeout" {
  description = "Specifies the amount of time, in minutes, to wait in critical pause before powering off the virtual machine."
  type        = number
  default     = 1
}

variable "automatic_start_action" {
  description = "Specifies the action the virtual machine is to take upon start."
  type        = string
  validation {
    condition     = contains(["Nothing", "StartIfRunning", "Start"], title(tostring(var.automatic_start_action)))
    error_message = "Parameter must be \"Nothing\", \"StartIfRunning\" or \"Start\"."
  }
  default = "Start"
}

variable "automatic_start_delay" {
  description = "Specifies the number of seconds by which the virtual machine's start should be delayed."
  type        = number
  default     = 1
}

variable "automatic_stop_action" {
  description = "Specifies the action the virtual machine is to take when the virtual machine host shuts down."
  type        = string
  validation {
    condition     = contains(["TurnOff", "Save", "ShutDown"], title(tostring(var.automatic_stop_action)))
    error_message = "Parameter must be \"TurnOff\", \"Save\" or \"ShutDown\"."
  }
  default = "ShutDown"
}

variable "checkpoint_type" {
  description = "Allows you to configure the type of checkpoints created by Hyper-V."
  type        = string
  validation {
    condition = contains([
      "Disabled", "Standard", "Production", "ProductionOnly"
    ], title(tostring(var.checkpoint_type)))
    error_message = "Parameter must be \"Disabled\", \"Standard\", \"Production\" or \"ProductionOnly\"."
  }
  default = "Standard"
}

variable "dvd_drives_blocks" {
  description = "Nested Schema for dvd_drives."
  type        = map(object({
    controller_location = number
    controller_number   = number
    path                = optional(string)
    resource_pool_name  = optional(string)
  }))
  default = {}
}

variable "dynamic_memory" {
  description = "Specifies if machine instance will have dynamic memory enabled."
  type        = bool
  validation {
    condition     = contains(["true", "false"], lower(tostring(var.dynamic_memory)))
    error_message = "Parameter must be \"true\" or \"false\"."
  }
  default = false
}

variable "generation" {
  description = "Specifies the generation, as an integer, for the virtual machine. "
  type        = number
  validation {
    condition     = var.generation >= 1 && var.generation <= 2
    error_message = "Accepted values: 1 or 2."
  }
  default = 1
}

variable "guest_controlled_cache_types" {
  description = "Specifies if the machine instance will use guest controlled cache types."
  type        = bool
  validation {
    condition     = contains(["true", "false"], lower(tostring(var.guest_controlled_cache_types)))
    error_message = "Parameter must be \"true\" or \"false\"."
  }
  default = false
}

variable "hard_disk_drives_blocks" {
  description = "Nested Schema for dvd_drives."
  type        = map(object({
    controller_location             = number
    controller_number               = number
    controller_type                 = optional(string)
    disk_number                     = optional(number)
    maximum_iops                    = optional(number)
    minimum_iops                    = optional(number)
    override_cache_attributes       = optional(string)
    path                            = optional(string)
    qos_policy_id                   = optional(string)
    resource_pool_name              = optional(string)
    support_persistent_reservations = optional(bool)
  }))
  default = {}
}

variable "high_memory_mapped_io_space" {
  description = "High memory mapped io space"
  type        = number
  default     = null
}

variable "integration_services" {
  description = "Integration services"
  type        = map(bool)
  default     = {}
}

variable "lock_on_disconnect" {
  description = "Specifies whether virtual machine connection in basic mode locks the console after a user disconnects."
  type        = string
  validation {
    condition     = contains(["On", "Off"], title(tostring(var.lock_on_disconnect)))
    error_message = "Parameter must be \"On\" or \"Off\"."
  }
  default = "On"
}

variable "low_memory_mapped_io_space" {
  description = "Low memory mapped io space."
  type        = number
  default     = null
}

variable "memory_maximum_bytes" {
  description = "Specifies the maximum amount of memory that the virtual machine is to be allocated."
  type        = number
  default     = null
}

variable "memory_minimum_bytes" {
  description = "Specifies the minimum amount of memory that the virtual machine is to be allocated. (Applies only to virtual machines using dynamic memory.)"
  type        = number
  default     = null
}

variable "memory_startup_bytes" {
  description = "Specifies the amount of memory that the virtual machine is to be allocated upon startup."
  type        = number
  default     = null
}

variable "network_adaptors_blocks" {
  description = "Specifies the network adaptors block(s)."
  type        = object({
    name                                       = string
    allow_teaming                              = optional(string)
    device_naming                              = optional(string)
    dhcp_guard                                 = optional(string)
    dynamic_ip_address_limit                   = optional(number)
    dynamic_mac_address                        = optional(bool)
    fix_speed_10g                              = optional(string)
    ieee_priority_tag                          = optional(string)
    iov_interrupt_moderation                   = optional(string)
    iov_queue_pairs_requested                  = optional(number)
    iov_weight                                 = optional(number)
    ipsec_offload_maximum_security_association = optional(number)
    is_legacy                                  = optional(bool)
    mac_address_spoofing                       = optional(string)
    management_os                              = optional(bool)
    mandatory_feature_id                       = optional(set(string))
    maximum_bandwidth                          = optional(number)
    minimum_bandwidth_absolute                 = optional(number)
    minimum_bandwidth_weight                   = optional(number)
    not_monitored_in_cluster                   = optional(bool)
    packet_direct_moderation_count             = optional(number)
    packet_direct_moderation_interval          = optional(number)
    packet_direct_num_procs                    = optional(number)
    port_mirroring                             = optional(string)
    resource_pool_name                         = optional(string)
    router_guard                               = optional(string)
    static_mac_address                         = optional(string)
    storm_limit                                = optional(number)
    switch_name                                = optional(string)
    test_replica_pool_name                     = optional(string)
    test_replica_switch_name                   = optional(string)
    virtual_subnet_id                          = optional(number)
    vlan_access                                = optional(bool)
    vlan_id                                    = optional(number)
    vmmq_enabled                               = optional(bool)
    vmmq_queue_pairs                           = optional(number)
    vmq_weight                                 = optional(number)
    vrss_enabled                               = optional(bool)
    wait_for_ips                               = optional(bool)
    ip_addresses                               = optional(list(string))
  })
  default = {}
}

variable "notes" {
  description = "Specifies a note to be associated with the machine to be created."
  type        = string
  default     = null
}

variable "path" {
  description = "The path of the virtual machine."
  type        = string
  default     = null
}

variable "processor_count" {
  description = "Specifies the number of virtual processors for the virtual machine."
  type        = number
  default     = null
}

variable "smart_paging_file_path" {
  description = "Specifies the folder in which the Smart Paging file is to be stored."
  type        = string
  default     = null
}

variable "snapshot_file_location" {
  description = "Specifies the folder in which the virtual machine is to store its snapshot files."
  type        = string
  default     = null
}

variable "state" {
  description = "Specifies if the machine instance will be running or off."
  type        = string
  validation {
    condition     = contains(["Running", "Off"], title(tostring(var.state)))
    error_message = "Parameter must be \"Running\" or \"Off\"."
  }
  default = "Running"
}

variable "static_memory" {
  description = "Specifies if the machine instance will use static memory."
  type        = bool
  validation {
    condition     = contains(["true", "false"], lower(tostring(var.static_memory)))
    error_message = "Parameter must be \"true\" or \"false\"."
  }
  default = false
}

variable "timeouts_block" {
  description = "The timeouts block allows you to specify timeouts for certain actions"
  type        = object({
    create = optional(number, 30)
    read   = optional(number, 5)
    update = optional(number, 30)
    delete = optional(number, 30)
  })
  default = null
}

variable "vm_firmware_block" {
  description = "Configure firmware"
  type        = object({
    boot_order_blocks = optional(list(object({
      boot_type            = string
      controller_location  = optional(number)
      controller_number    = optional(number)
      mac_address          = optional(string)
      network_adapter_name = optional(string)
      path                 = optional(string)
      switch_name          = optional(string)
    })), [])
    console_mode                    = optional(string)
    enable_secure_boot              = optional(string)
    pause_after_boot_failure        = optional(string)
    preferred_network_boot_protocol = optional(string)
    secure_boot_template            = optional(string)
  })
  default = null
}

variable "vm_processor_block" {
  description = "Configure processor"
  type        = object({
    compatibility_for_migration_enabled               = optional(bool)
    compatibility_for_older_operating_systems_enabled = optional(bool)
    enable_host_resource_protection                   = optional(bool)
    expose_virtualization_extensions                  = optional(bool)
    hw_thread_count_per_core                          = optional(number)
    maximum                                           = optional(number)
    maximum_count_per_numa_node                       = optional(number)
    maximum_count_per_numa_socket                     = optional(number)
    relative_weight                                   = optional(number)
    reserve                                           = optional(number)
  })
  default = null
}

variable "wait_for_ips_poll_period" {
  description = "The amount of time in seconds to wait between trying to get ip addresses for network cards on the virtual machine."
  type        = number
  default     = null
}

variable "wait_for_ips_timeout" {
  description = "The amount of time in seconds to wait before throwing an exception when trying to get ip addresses for network cards on the virtual machine."
  type        = number
  default     = null
}

variable "wait_for_state_poll_period" {
  description = "The amount of time in seconds to wait between trying to change for the virtual machine to the desired state."
  type        = number
  default     = null
}

variable "wait_for_state_timeout" {
  description = "The amount of time in seconds to wait before throwing an exception when trying to change for the virtual machine to the desired state."
  type        = number
  default     = null
}
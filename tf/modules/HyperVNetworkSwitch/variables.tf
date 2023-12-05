variable "name" {
  description = "Specifies the name of the switch to be created."
  type        = string
}

variable "allow_management_os" {
  description = "Specifies if the HyperV host machine will have access to network switch when created."
  type        = bool
  validation {
    condition     = contains(["true", "false"], lower(tostring(var.allow_management_os)))
    error_message = "Parameter must be \"true\" or \"false\"."
  }
  default = true
}

variable "default_flow_minimum_bandwidth_absolute" {
  description = "Specifies the minimum bandwidth, in bits per second, that is allocated to a special category called default flow."
  type        = number
  default     = null
}

variable "default_flow_minimum_bandwidth_weight" {
  description = "Specifies the minimum bandwidth, in relative weight, that is allocated to a special category called default flow."
  type        = number
  default     = null
}

variable "default_queue_vmmq_queue_pairs" {
  description = "Should Virtual Machine Multi-Queue be enabled."
  type        = number
  default     = null
}

variable "default_queue_vmmq_enabled" {
  description = "Should Virtual Machine Multi-Queue be enabled."
  type        = bool
  validation {
    condition     = contains(["true", "false"], lower(tostring(var.default_queue_vmmq_enabled)))
    error_message = "Parameter must be \"true\" or \"false\"."
  }
  default = true
}

variable "default_queue_vrss_enabled" {
  description = "Should Virtual Receive Side Scaling be enabled."
  type        = bool
  validation {
    condition     = contains(["true", "false"], lower(tostring(var.default_queue_vrss_enabled)))
    error_message = "Parameter must be \"true\" or \"false\"."
  }
  default = true
}

variable "enable_embedded_teaming" {
  description = "Specifies if the HyperV host machine will enable teaming for network switch when created."
  type        = bool
  validation {
    condition     = contains(["true", "false"], lower(tostring(var.enable_embedded_teaming)))
    error_message = "Parameter must be \"true\" or \"false\"."
  }
  default = true
}

variable "enable_iov" {
  description = "Specifies if the HyperV host machine will enable IO virtualization for network switch when created."
  type        = bool
  validation {
    condition     = contains(["true", "false"], lower(tostring(var.enable_iov)))
    error_message = "Parameter must be \"true\" or \"false\"."
  }
  default = true
}

variable "enable_packet_direct" {
  description = "Specifies if the HyperV host machine will enable packet direct path for network switch when created."
  type        = bool
  validation {
    condition     = contains(["true", "false"], lower(tostring(var.enable_packet_direct)))
    error_message = "Parameter must be \"true\" or \"false\"."
  }
  default = true
}

variable "minimum_bandwidth_mode" {
  description = "Specifies how minimum bandwidth is to be configured on the virtual switch."
  type        = string
  default     = null
}

variable "net_adapter_names" {
  description = "Specifies how minimum bandwidth is to be configured on the virtual switch."
  type        = list(string)
  default     = []
}

variable "notes" {
  description = "Specifies a note to be associated with the switch to be created."
  type        = string
  default     = null
}

variable "switch_type" {
  description = "Specifies the type of the switch to be created."
  type        = string
  validation {
    condition     = contains(["Internal", "Private", "External"], title(tostring(var.switch_type)))
    error_message = "Parameter must be \"Internal\", \"Private\" or \"External\"."
  }
  default     = null
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
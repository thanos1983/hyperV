variable "path" {
  description = "Path to the new virtual hard disk file(s) that is being created or being copied to."
  type        = string
}

variable "block_size" {
  description = "Specifies the block size, in bytes, of the virtual hard disk to be created."
  type        = number
  default     = null
}

variable "logical_sector_size" {
  description = "Specifies the logical sector size, in bytes, of the virtual hard disk to be created."
  type        = number
  default     = null
}

variable "parent_path" {
  description = "Specifies the path to the parent of the differencing disk to be created."
  type        = string
  default     = null
}

variable "physical_sector_size" {
  description = "Specifies the physical sector size, in bytes."
  type        = number
  validation {
    condition     = contains(["0", "512", "4096"], tostring(var.physical_sector_size))
    error_message = "Parameter must be \"0\", \"512\" or \"4096\"."
  }
  default = 0
}

variable "size" {
  description = "The maximum size, in bytes, of the virtual hard disk to be created."
  type        = number
  default     = null
}

variable "source" {
  description = "The destination folder will be the directory portion of the path."
  type        = string
  default     = null
}

variable "source_disk" {
  description = "Specifies the physical disk to be used as the source for the virtual hard disk to be created."
  type        = number
  default     = null
}

variable "source_vm" {
  description = "This value is the name of the vm to copy the vhds from."
  type        = string
  default     = null
}

variable "vhd_type" {
  description = "This field is mutually exclusive with the fields source, source_vm, parent_path."
  type        = string
  validation {
    condition     = contains(["Unknown", "Fixed", "Dynamic", "Differencing"], title(tostring(var.vhd_type)))
    error_message = "Parameter must be \"Unknown\", \"Fixed\", \"Dynamic\" or \"Differencing\"."
  }
  default = null
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
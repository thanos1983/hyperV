output "id" {
  description = "The ID of this resource."
  value       = hyperv_vhd.vhd.id
}

output "exists" {
  description = "Does virtual disk exist."
  value       = hyperv_vhd.vhd.exists
}
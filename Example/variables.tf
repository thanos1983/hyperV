variable "cacert_path" {
  description = "The path to the ca certificates to use for HyperV api calls."
  type        = string
  default     = null
}

variable "cert_path" {
  description = "The path to the certificate to use for authentication for HyperV api calls."
  type        = string
  default     = null
}

variable "host" {
  description = "The host to run HyperV api calls against."
  type        = string
  default     = "127.0.0.1"
}

variable "https" {
  description = "Should https be used for HyperV api calls."
  type        = bool
  default     = false
}

variable "insecure" {
  description = "Skips TLS Verification for HyperV api calls."
  type        = bool
  default     = true
}

variable "kerberos_config" {
  description = "Use Kerberos Config for authentication for HyperV api calls."
  type        = string
  default     = null
}

variable "kerberos_credential_cache" {
  description = "Use Kerberos Realm for authentication for HyperV api calls."
  type        = string
  default     = null
}

variable "kerberos_realm" {
  description = "Use Kerberos Realm for authentication for HyperV api calls."
  type        = string
  default     = null
}

variable "kerberos_service_principal_name" {
  description = "Use Kerberos Service Principal Name for authentication for HyperV api calls."
  type        = string
  default     = null
}

variable "key_path" {
  description = "The path to the certificate private key to use for authentication for HyperV api calls."
  type        = string
  default     = null
}

variable "password" {
  description = "The password associated with the username to use for HyperV api calls."
  type        = string
  default     = "P@ssw0rd"
}

variable "port" {
  description = "The port to run HyperV api calls against."
  type        = number
  default     = 5986
}

variable "script_path" {
  description = "The path used to copy scripts meant for remote execution for HyperV api calls."
  type        = string
  default     = null
}

variable "timeout" {
  description = "The timeout to wait for the connection to become available for HyperV api calls."
  type        = string
  default     = "30s"
}

variable "tls_server_name" {
  description = "The TLS server name for the host used for HyperV api calls."
  type        = string
  default     = null
}

variable "use_ntlm" {
  description = "Use NTLM for authentication for HyperV api calls."
  type        = bool
  default     = true
}

variable "user" {
  description = "The username to use when HyperV api calls are made."
  type        = string
  default     = "Administator"
}
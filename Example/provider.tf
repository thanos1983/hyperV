terraform {
  required_providers {
    hyperv = {
      source  = "taliesins/hyperv"
      version = "1.0.4"
    }
  }
}

provider "hyperv" {
  user            = var.user
  password        = var.password
  host            = var.host
  port            = var.port
  https           = var.https
  insecure        = var.insecure
  use_ntlm        = var.use_ntlm
  tls_server_name = var.tls_server_name
  cacert_path     = var.cacert_path
  cert_path       = var.cert_path
  key_path        = var.key_path
  script_path     = var.script_path
  timeout         = var.timeout
}
terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "=3.6.0"
    }
    hyperv = {
      source  = "taliesins/hyperv"
      version = "1.0.4"
    }
  }
  required_version = ">= 0.13"
}
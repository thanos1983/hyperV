terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "=3.6.0"
    }
  }
  backend "hyperv" {}
  required_version = ">= 0.13"
}
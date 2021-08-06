terraform {
  required_providers {
    metal = {
      source = "equinix/metal"
    }
  }
}

provider "metal" {
  auth_token = var.auth_token
}


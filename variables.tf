variable "node_count" { default = 1 }
variable "auth_token" {
  description = "This is your Equinix Metal API Auth token"
  type        = string
  sensitive   = true
}

variable "project_uuid" {
  description = "Equinix Metal UUID"
  type        = string
}


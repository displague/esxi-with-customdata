output "ip" {
  value = metal_device.esxi.*.ip_address
}
output "hostname" {
  value = metal_device.esxi.*.hostname
}
output "network" {
  value = metal_device.esxi.*.network
}
output "rootpassword" {
  value     = metal_device.esxi.*.root_password
  sensitive = true
}

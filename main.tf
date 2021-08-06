locals {
  custom = jsonencode({
    kickstart = {
      postinstall_shell_cmd = file(join("/", [path.module, "assets/postinstall.sh"]))
    }
  })
}

resource "metal_device" "esxi" {
  count            = var.node_count
  hostname         = "esxi-node${count.index}"
  plan             = "c3.small.x86"
  metro            = "sv"
  operating_system = "vmware_esxi_7_0"
  billing_cycle    = "hourly"
  project_id       = var.project_uuid
  description      = "ESXi test of customdata"
  custom_data      = local.custom
}

output "custom" { value = local.custom }

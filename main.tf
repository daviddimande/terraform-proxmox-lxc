terraform {
  required_version = "~> 1.2"
  required_providers {
    proxmox = {
      source  = "Telmate/proxmox"
      version = "3.0.1-rc9"
    }

  }

}

resource "proxmox_lxc" "container-lxc" {
  target_node  = var.target_node
  hostname     = var.hostname
  ostemplate   = var.ostemplate
  password     = var.password
  unprivileged = var.unprivileged
  template     = var.template
  swap         = var.swap
  start        = var.start
  protection   = var.protection
  onboot       = var.onboot
  memory       = var.memory
  console      = var.console
  description  = "my first container from terraform"
  cores        = var.cores

  features {
    nesting = var.nesting
  }

  rootfs {
    storage = var.storage
    size    = var.container_size
  }

   network {
    name   = var.network_bridge
    bridge = var.bridge_type
    ip     = var.ip
    gw     = var.gw

  }
}
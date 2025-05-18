/* variable "pm_api_url" {
  type    = string
  description = "API endpoint url"
}

variable "pm_api_token_id" {
  type        = string
  description = "token id for proxmox user"
  sensitive   = true
}

variable "pm_api_token_secret" {
  type        = string
  description = "secret token for proxmox"
  sensitive   = true
}

variable "pm_log_file" {
  type        = string
  default     = "terraform-plugin-proxmox.log"
  description = "log file for terraform"
}
*/

variable "target_node" {
  type        = string
  default     = "pve"
  description = "proxmox node where deployment will be done"
}

variable "onboot" {
  type        = bool
  default     = true
  description = "startup virtual machine during host booting"
}

variable "protection" {
  type        = bool
  default     = false
  description = "if enabled, prevent virtual machine to be deleted accidentally"
}

variable "memory" {
  type        = number
  default     = 2048
  description = "define memory size for virtual machine"
}

variable "sockets" {
  type        = number
  default     = 1
  description = "define cpu sockets"
}

variable "cores" {
  type        = number
  default     = 1
  description = "define cpu cores"
}

variable "storage" {
  type        = string
  default     = "local-lvm"
  description = "defines storage location for virtual machine disk"

}

variable "network_bridge" {
  type        = string
  default     = "vmbr0"
  description = "define network interface mode"
}

variable "swap" {
  type        = number
  default     = 1024
  description = "swap memory for VM and container"

}

variable "hostname" {
  type        = string
  default     = "my-container"
  description = "hostname for container"
}

variable "ostemplate" {
  type        = string
  default     = "mbenga:vztmpl/ubuntu-24.10-standard_24.10-1_amd64.tar.zst"
  description = "template loccation within proxmox VE"
}

variable "unprivileged" {
  type        = bool
  default     = true
  description = "unprivileged setting for container"

}

variable "password" {
  type        = string
  default     = "YouPassHere(SecureOne)"
  description = "password setting"
  sensitive   = true

}

variable "ip" {
  type        = string
  description = "container ip address"
}

variable "gw" {
  type        = string
  description = "container gateway address"
}

variable "bridge_type" {
  type        = string
  default     = "vmbr0"
  description = "network bridge settings"

}

variable "container_size" {
  type        = string
  default     = "10G"
  description = "disk size for container"
}

variable "start" {
  type        = bool
  default     = true
  description = "start container after creation"
}


variable "template" {
  type        = bool
  default     = false
  description = "create as template"
}

variable "console" {
  type        = bool
  default     = true
  description = "enable container to container"
}

variable "nesting" {
  type        = bool
  default     = true
  description = "enable nesting"

}
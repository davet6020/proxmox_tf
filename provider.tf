terraform {
  required_providers {
    proxmox = {
      source = "Telmate/proxmox"
      version = "3.0.1-rc8"
    }
  }
}

variable proxmox_api_url {
  type        = string
  description = "provider.tf:proxmox_api_url"
}

variable proxmox_api_token_id {
  type        = string
  description = "provider.tf:proxmox_api_token_id"
}

variable proxmox_api_token {
  type        = string
  description = "provider.tf:proxmox_api_token"
}

provider "proxmox" {
  # Configuration options
  pm_api_url = var.proxmox_api_url
  pm_api_token_id = var.proxmox_api_token_id
  pm_api_token_secret = var.proxmox_api_token
  # Proxmox uses self signed certs, this tells tf not to verify cert
  pm_tls_insecure = true
}

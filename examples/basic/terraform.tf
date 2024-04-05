terraform {
  required_version = ">= 1.5.5"
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.34.1"
    }
  }
}

provider "digitalocean" {
  token = var.digitalocean_token # or DIGITALOCEAN_ACCESS_TOKEN (or DIGITALOCEAN_TOKEN)

  spaces_access_id  = var.spaces_access_id  # or SPACES_ACCESS_KEY_ID
  spaces_secret_key = var.spaces_secret_key # or SPACES_SECRET_ACCESS_KEY
}

terraform {
  required_version = ">= 1.6.3"
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.37.1"
    }
  }
}

provider "digitalocean" {
  token = var.digitalocean_token # or DIGITALOCEAN_ACCESS_TOKEN (or DIGITALOCEAN_TOKEN)

  spaces_access_id  = var.spaces_access_id  # or AWS_ACCESS_KEY_ID
  spaces_secret_key = var.spaces_secret_key # or AWS_SECRET_ACCESS_KEY
}

terraform {
  required_version = ">= 1.5.5"
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = ">= 2.34.1"
    }
  }
}

resource "digitalocean_spaces_bucket" "state" {
  name   = var.name
  region = var.region
  acl    = "private"

  lifecycle_rule {
    enabled = true
    noncurrent_version_expiration {
      days = var.noncurrent_version_expiration
    }
  }

  versioning {
    enabled = var.versioning
  }
}

variable "digitalocean_token" {
  description = "The  DigitalOcean API token. Defaults to the value of the DIGITALOCEAN_TOKEN / DIGITALOCEAN_ACCESS_TOKEN."
  type        = string
  default     = null
}

variable "spaces_access_id" {
  description = "The access key ID used for Spaces API operations. Defaults to the value of the SPACES_ACCESS_KEY_ID."
  type        = string
  default     = null
}

variable "spaces_secret_key" {
  description = "The secret access key used for Spaces API operations. Defaults to the value of the SPACES_SECRET_ACCESS_KEY."
  type        = string
  default     = null
}

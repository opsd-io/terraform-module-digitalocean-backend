variable "region" {
  description = "The region where the resources resides."
  type        = string
}

variable "name" {
  description = "The name of the bucket."
  type        = string
}

variable "versioning" {
  description = "Enable bucket versioning."
  type        = bool
  default     = true
}

variable "noncurrent_version_expiration" {
  description = "Specifies the number of days after which an object's non-current versions expire."
  type        = number
  default     = 90
}

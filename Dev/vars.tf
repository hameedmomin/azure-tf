variable "rg-name" {
  description = "Resource Group Name"
  default     = "project"
  type        = string
}

variable "environment" {
  description = "Environment name"
  default     = "dev"
  type        = string
}

variable "rg-location" {
  description = "Resource location"
  default     = "east us"
  type        = string
}

variable "backend" {
  default                 = "dev-storage-account"
  description             = "Storage Account Name"
  type                    = string

}

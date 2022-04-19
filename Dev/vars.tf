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

variable "storage_account_name" {
  default                 = "hameed123"
  description             = "Storage Account Name"
  type                    = string

}

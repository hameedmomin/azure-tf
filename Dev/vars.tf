variable "rg-name" {
  description = "Resource Group Name"
  default     = "project"
  type = string
}

variable "environment" {
  default = "dev"
  description = "Environment name"
  type = string
}

variable "rg-location" {
  default = "east us"
  description = "Resource location"
  type = string
}
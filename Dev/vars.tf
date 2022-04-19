variable "rg-name" {
<<<<<<< HEAD
  description = "Resource Group Name"
  default     = "project"
  type        = string
}

variable "environment" {
  default     = "dev"
  description = "Environment name"
  type        = string
}

variable "rg-location" {
  default     = "east us"
  description = "Resource location"
  type        = string
}
=======
  description            = "Resource Group Name"
  default                = "project"
  type                   = string
}

variable "environment" {
  default                 = "dev"
  description             = "Environment name"
  type                    = string
}

variable "rg-location" {
  default                 = "east us"
  description             = "Resource location"
  type                    = string
}
variable "backend" {
  default                 = "dev-storage-account"
  description             = "Storage Account Name"
  type                    = string

}
#variable "storage account name" {}
>>>>>>> 92b481923a9e0c259af1cb3f1513a0af72cbe4a3

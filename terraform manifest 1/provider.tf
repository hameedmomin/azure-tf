/*
terraform {
    required_version = ">= 1.0.0"
    required_providers {
        azurerm = {
            source  = "hashicorp/azurerm"
            version = "=3.0.0"
        }
    }
}

provider "azurerm" {
    features {}
}

resource "random_string" "random" {
        length           = 16
        special          = false
        override_special = "/@£$"
}
*/

terraform {
  required_providers {
    azurerm = {
      version  = ">= 3.0.0"
      source   =  "hashicorp/azurerm"

    }
  }
}

provider "azurerm" {
  features {}
}

resource "random_string" "local" {
    length = 16
    special = false
    override_special = "@"
}
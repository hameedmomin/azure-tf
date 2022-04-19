terraform {
  required_providers {
    azurerm        = {
      source       = "hashicorp/azurerm"
      version      = ">= 2.0"
    }
  }
}

provider "azurerm" {
  alias          = "dev"
  features {
    virtual_machine {
      delete_os_disk_on_deletion = false # This will ensure when the Virtual Machine is destroyed, Disk is not deleted, default is true and we can alter it at provider level
    }
  }
}

provider "azurerm" {
  alias          = "pro"
  features {}

}
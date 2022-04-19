terraform {
  required_providers {
    azurerm        = {
      source       = "hashicorp/azurerm"
      version      = ">= 2.0"
    }
  }
}

provider "azurerm" {
  alias          = "dev.eastus"
  features {}
}

provider "azurerm" {
  alias          = "pro.westus"
  features {}
}
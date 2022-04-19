terraform {
  required_providers {
    azurerm                = {
      source               = "hashicorp/azurerm"
      version              = "=3.0.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "terraform-rg"
    storage_account_name = "${azurerm_storage_account.example.name}"
    container_name       = "tfstatefiles"
    key                  = "terraform.tfstate"
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

# Create a resource group
resource "azurerm_resource_group" "dev" {
  name                   = "Dev"
  location               = "East US"
}

terraform {

}
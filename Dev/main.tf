terraform {
  required_providers {
    azurerm                = {
      source               = "hashicorp/azurerm"
      version              = "=3.0.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "terraform-Dev"
    storage_account_name = "hameed123"
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
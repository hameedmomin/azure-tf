terraform {
  required_providers {
    azurerm                = {
      source               = "hashicorp/azurerm"
      version              = "=3.0.0"
    }
  }

}
# Create a resource group
resource "azurerm_resource_group" "dev" {
  name                   = "Dev"
  location               = "East US"
}


# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

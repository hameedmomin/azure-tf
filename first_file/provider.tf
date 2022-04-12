resource "azurerm_resource_group" "first" {
    name = my-resource
    location = eastus

  
}

provider "azurerm" {
    features {}
  
}



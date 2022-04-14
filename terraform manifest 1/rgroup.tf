resource "azurerm_resource_group" "project" {
  location = "East US"
  name     = "new-project"
}

resource "azurerm_resource_group" "project-1" {
  location = "West US 2"
  name     = "azurerm.provider2-westus"
}
/*
resource "azurerm_resource_group" "project" {
  location = "East US"
  name     = "new-project"
}

resource "azurerm_resource_group" "project-1" {
  location = "West US 2"
  name     = "azurerm.provider2-westus"
}*/

resource "azurerm_resource_group" "myrg1" {
  location = "East US"
  name     = "myrg"

}
output "rgname" {
  value = "${azurerm_resource_group.myrg1.name}"
}


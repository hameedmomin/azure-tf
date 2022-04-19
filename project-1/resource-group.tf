resource "azurerm_resource_group" "dev" {
  provider            = "azurerm.dev.eastus"
  location            = "East US"
  name                = "dev-rgroup"
}

resource "azurerm_resource_group" "pro" {
  provider            = "azurerm.pro.westus"
  location            = "West US"
  name                = "pro-rgroup"
}

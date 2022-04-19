resource "azurerm_resource_group" "dev" {
  provider            = azurerm.dev
  location            = "East US"
  name                = "dev-rgroup"

}

resource "azurerm_resource_group" "pro" {
  provider            = azurerm.pro
  location            = "West US"
  name                = "pro-rgroup"
}

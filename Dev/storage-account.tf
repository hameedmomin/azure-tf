resource "azurerm_storage_account" "example" {
  name                                = "hameed123"
  resource_group_name                 = azurerm_resource_group.dev.name
  location                            = azurerm_resource_group.dev.location
  account_tier                        = "Standard"
  account_replication_type            = "GRS"

/*  tags = {
    environment = "staging"
  }*/
}
resource "azurerm_storage_account" "project2" {
  depends_on                                   = [azurerm_resource_group.project2]
  account_replication_type                     = "GRS"
  account_tier                                 = "Standard"
  location                                     = azurerm_resource_group.project2.location
  name                                         = "dev${random_string.locals.id}"
  resource_group_name                          = azurerm_resource_group.project2.name
}

resource "azurerm_storage_container" "storage" {
  depends_on                                   = [azurerm_storage_account.project2]
  name                                         = "terraform"
  storage_account_name                         = azurerm_storage_account.project2.name
  container_access_type                        = "private"
}
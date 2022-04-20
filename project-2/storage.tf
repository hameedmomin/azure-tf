resource "azurerm_storage_account" "project2" {
  depends_on                                   = [azurerm_resource_group.project2]
  account_replication_type                     = "GRS"
  account_tier                                 = "Standard"
  location                                     = azurerm_resource_group.project2.location
  name                                         = "DEV-${random_string.locals}"
  resource_group_name                          = azurerm_resource_group.project2.name
}

resource "azurerm_storage_container" "Storage" {
  depends_on                                   = [azurerm_storage_account.project2]
  name                                         = "${var.ENV}-storage"
  storage_account_name                         = azurerm_storage_account.project2.name
  container_access_type                        = "private"
}
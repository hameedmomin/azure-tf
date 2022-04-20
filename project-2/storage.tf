resource "azurerm_storage_account" "project2" {
  account_replication_type                     = "GRS"
  account_tier                                 = "Standard"
  location                                     = azurerm_resource_group.project2.location
  name                                         = "${var.PREFIX}-${var.ENV}-${random_string.locals}"
  resource_group_name                          = azurerm_resource_group.project2.name
}

terraform {
  backend "azurerm" {
    resource_group_name  = azurerm_resource_group.project2.name
    storage_account_name = azurerm_storage_account.project2.name
    container_name       = "tfstate"
    key                  = "${var.PREFIX}-${var.ENV}.terraform.tfstate"

  }
}
terraform {
  backend "azurerm" {

    resource_group_name                        = "azurerm_resource_group.project2.name"
    storage_account_name                       = "azurerm_storage_account.project2.name"
    container_name                             = "azurerm_storage_container.storage.name"
    key                                        = "dev.terraform.tfstate"

  }
}

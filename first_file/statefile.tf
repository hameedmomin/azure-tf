terraform {
  backend "azurerm" {
    resource_group_name  = "${azurerm_resource_group.project.name}"
    storage_account_name = "new-project"
    container_name       = "project1"
    key                  = "terraform.tfstate"
  }
}
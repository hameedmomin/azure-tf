resource "random_string" "local" {
  length                   = 16
  upper                    = false
  special                  = false
}
resource "azurerm_storage_account" "example" {
  depends_on               = [azurerm_resource_group.dev]
  name                     = "my-${random_string.local.id}"
  resource_group_name      = azurerm_resource_group.dev.name
  location                 = azurerm_resource_group.dev.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

}
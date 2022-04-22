resource "azurerm_public_ip" "first-ip" {
  name                = my-first-ip
  resource_group_name = azurerm_resource_group.project2.name
  location            = azurerm_resource_group.project2.location
  allocation_method   = "Static"

/*  tags = {
    environment = "Production"
  }*/
}
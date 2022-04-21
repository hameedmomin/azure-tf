resource "azurerm_resource_group" "project2" {
  location                                     = "East US"
  name                                         = "${var.PREFIX}-${var.ENV}"
}
resource "random_string" "locals" {
  length                                       = 16
  lower                                        = false
  upper                                        = false
  special                                      = false
  override_special                             = "-/@"

}

/*resource "azurerm_virtual_network" "dev" {
  name                                        = "${var.PREFIX}-${var.ENV}-vnet"
  depends_on                                  = [azurerm_resource_group.project2]
  location                                    = azurerm_resource_group.project2.location
  resource_group_name                         = azurerm_resource_group.project2.name
  address_space                               = ["10.0.0.0/16"]
  dns_servers                                 = ["10.0.0.4", "10.0.0.5"]

*//**/
/*    subnet {
      name                                    = "subnet1"
      address_prefix                          = "10.0.1.0/24"
    }

    subnet {
      name                                    =  "subnet2"
      address_prefix                          = "10.0.2.0/24"
      security_group                          = azurerm_network_security_group.dev.id
    }
*/

/*  tags = {
    environment                               = "${var.ENV}"
  }
}*/

/*resource "azurerm_network_security_group" "dev" {
  location                                     = azurerm_resource_group.project2.location
  name                                         = "${var.ENV}-${var.PREFIX}-SG"
  resource_group_name                          = azurerm_resource_group.project2.name
}*/

resource "azurerm_subnet" "websubnets" {
  name                           = "${azurerm_virtual_network.vnet.name}-${var.web}"
  resource_group_name            = azurerm_resource_group.project2.name
  virtual_network_name           = azurerm_virtual_network.vnet.name
  address_prefixes               = ["10.0.1.0/24"]
}
resource "azurerm_network_security_group" "nsg" {
  name                = "${azurerm_subnet.websubnets.name}-nsg"
  depends_on          = [azurerm_subnet.websubnets]
  location            = azurerm_resource_group.project2.location
  resource_group_name = azurerm_resource_group.project2.name
}

locals {
  web_inbound_ports_maps = {
    "100" : "80", #If the key starts with a number , you must use the colon for ":" instead of "="
    "110" : "443",
    "120" : "22"
  }
}
resource "azurerm_network_security_rule" "nsg-rule" {
  for_each                    = local.web_inbound_ports_maps
  access                      = "Allow"
  direction                   = "Inbound"
  name                        = "Rule-port-${each.value}"
  network_security_group_name = azurerm_network_security_group.nsg.name
  source_port_range           = "*"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  priority                    = each.key
  protocol                    = "Tcp"
  resource_group_name         = azurerm_resource_group.project2.name

}
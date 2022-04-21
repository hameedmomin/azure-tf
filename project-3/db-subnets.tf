resource "azurerm_subnet" "db" {
  name                        = "${azurerm_virtual_network.vnet.name}-${var.db}"
  resource_group_name         = azurerm_resource_group.project2.name
  virtual_network_name        = azurerm_virtual_network.vnet.name
  address_prefixes            = var.db_address
}

resource "azurerm_network_security_group" "db" {
  location            = azurerm_resource_group.project2.location
  name                = "${azurerm_subnet.db.name}"
  resource_group_name = azurerm_resource_group.project2.location
}

resource "azurerm_subnet_network_security_group_association" "dbsubnet-nsg-association" {
  depends_on                = [azurerm_network_security_rule.db-nsg-rule] # Every NSG Rule Association will disassociate NSG from Subnet and Associate it, so we associate it only after NSG is completely created - Azure Provider Bug https://github.com/terraform-providers/terraform-provider-azurerm/issues/354
  subnet_id                 = azurerm_subnet.db.id
  network_security_group_id = azurerm_network_security_group.db.id
}


locals {
  db_inbound_ports_map = {
    "100" : "3306", # If the key starts with a number, you must use the colon syntax ":" instead of "="
    "110" : "1433",
    "120" : "5432"
  }
}
## NSG Inbound Rule for dbTier Subnets
resource "azurerm_network_security_rule" "db-nsg-rule" {
  for_each                    = local.db_inbound_ports_map
  name                        = "Rule-Port-${each.value}"
  priority                    = each.key
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = each.value
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.project2.name
  network_security_group_name = azurerm_network_security_group.db.name
}
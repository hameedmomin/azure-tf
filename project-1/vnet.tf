resource "azurerm_virtual_network" "dev" {
  name                = "dev-vnet"
  depends_on          = [azurerm_resource_group.dev]
  location            = azurerm_resource_group.dev.location
  resource_group_name = azurerm_resource_group.dev.name
  address_space       = ["10.0.0.0/16"]
  dns_servers         = ["10.0.0.4", "10.0.0.5"]

/*  subnet {
    name              = "subnet1"
    address_prefix    = "10.255.0.0/24"
  }*/

/*  subnet {
    name              =  "subnet2"
    address_prefix    = "10.0.2.0/24"
    security_group    = azurerm_network_security_group.example.id
  }*/

  tags = {
    environment       = "Dev-01"
  }
}
resource "azurerm_virtual_network" "pro" {
  name                = "pro-vnet"
  depends_on          = [azurerm_resource_group.dev]
  location            = azurerm_resource_group.dev.location
  resource_group_name = azurerm_resource_group.dev.name
  address_space       = ["10.1.0.0/16"]
  dns_servers         = ["10.10.0.0", "10.11.0.0"]

/*  subnet {
    name              = "subnet1"
    address_prefix    = "10.0.255.0/24"
  }*/

  /*  subnet {
      name              =  "subnet2"
      address_prefix    = "10.0.2.0/24"
      security_group    = azurerm_network_security_group.example.id
    }*/

  tags = {
    environment       = "Pro-01"
  }
}

/*
resource "azurerm_network_security_group" "example" {
  name                = "acceptanceTestSecurityGroup1"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name

  security_rule {
    name                       = "test123"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  tags = {
    environment = "Production"
  }
}*/

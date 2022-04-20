resource "azurerm_linux_virtual_machine" "myvm" {
  name                                       = "vm-1"
  resource_group_name                        = azurerm_resource_group.dev.name
  location                                   = azurerm_resource_group.dev.location
  size                                       = "Standard_F2"
  admin_username                             = "adminuser"
  network_interface_ids                      = [azurerm_network_interface.nic.id]

/*  admin_ssh_key {
    username                                 = "adminuser"
    public_key                               = file("~/terrafrom-azure.pub")
  }*/

  os_disk {
    name                                     = "mydisk"
    caching                                  = "ReadWrite"
    storage_account_type                     = "Standard_LRS"
  }

  source_image_reference {
    publisher                                = "Redhat"
    offer                                    = "RHEL"
    sku                                      = "8-LVM"
    version                                  = "latest"
  }
}
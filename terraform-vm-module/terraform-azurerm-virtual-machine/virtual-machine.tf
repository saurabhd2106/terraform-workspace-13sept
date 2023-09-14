resource "azurerm_linux_virtual_machine" "myterraformvm" {
  name                  = var.virtualMachineName
  location              = var.location
  resource_group_name   = azurerm_resource_group.myterraformgroup.name
  network_interface_ids = [azurerm_network_interface.myterraformnic["my_nic"].id]
  size                  = var.diskSize

  os_disk {
    name                 = "myOsDisk"
    caching              = "ReadWrite"
    storage_account_type = "Premium_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }

  computer_name                   = var.virtualMachineName
  admin_username                  = "azureuser"
  disable_password_authentication = true

  admin_ssh_key {
    username   = "azureuser"
    
    public_key = data.azurerm_ssh_public_key.public_ssh_key.public_key
  }

  boot_diagnostics {
    storage_account_uri = module.mystorageaccount.storage_account.primary_blob_endpoint
  }

  tags = var.tags
}
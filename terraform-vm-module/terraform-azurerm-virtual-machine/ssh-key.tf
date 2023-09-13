data "azurerm_ssh_public_key" "public_ssh_key" {

    name = var.ssh_public_key

    resource_group_name = var.ssh_key_resource_group
  
}
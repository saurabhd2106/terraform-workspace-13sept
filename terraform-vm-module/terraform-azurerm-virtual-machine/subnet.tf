resource "azurerm_subnet" "myterraformsubnet" {
  
  for_each = var.subnets
  
  name                 = each.key
  resource_group_name  = azurerm_resource_group.myterraformgroup.name
  virtual_network_name = azurerm_virtual_network.myterraformnetwork.name
  address_prefixes     = each.value.address_prefixes
  
}
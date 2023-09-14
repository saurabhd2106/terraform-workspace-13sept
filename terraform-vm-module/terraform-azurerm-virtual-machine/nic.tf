resource "azurerm_network_interface" "myterraformnic" {

  for_each = var.nic

  name                = each.key
  location            = azurerm_resource_group.myterraformgroup.location
  resource_group_name = azurerm_resource_group.myterraformgroup.name

  ip_configuration {
    name                          = each.value.ip_configuration.name
    subnet_id                     = azurerm_subnet.myterraformsubnet[each.value.ip_configuration.subnet].id
    private_ip_address_allocation = each.value.ip_configuration.private_ip_address_allocation
    public_ip_address_id          = azurerm_public_ip.myterraformpublicip.id
  }

  tags = var.tags
}

# Connect the security group to the network interface
resource "azurerm_network_interface_security_group_association" "example" {
  network_interface_id      = azurerm_network_interface.myterraformnic["my_nic"].id
  network_security_group_id = azurerm_network_security_group.myterraformnsg.id
}
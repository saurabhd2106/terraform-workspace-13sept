resource "azurerm_network_security_group" "myterraformnsg" {
  name                = var.nsgname
  location            = var.location
  resource_group_name = azurerm_resource_group.myterraformgroup.name

  dynamic "security_rule" { 

    for_each = var.inbound_ports
    content {

    name                       = security_rule.key
    priority                   = security_rule.value.priority
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = security_rule.value.portNumber
    source_address_prefix      = "*"
    destination_address_prefix = "*"

    }
    
  }

 

  tags = var.tags
}
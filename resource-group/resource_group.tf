resource "azurerm_resource_group" "myRg" {

  name     = var.rg-name
  location = var.location

  tags = var.tags

}

resource "azurerm_resource_group" "myRg" {

  name     = var.rg-name
  location = "saurabh-rg-1"

  tags = var.tags

}

resource "azurerm_resource_group" "myRg-count" {

  name     = var.rg-names[count.index]
  location = var.location

  tags = var.tags

  count = length(var.rg-names)

}

resource "azurerm_resource_group" "myRg-for-each" {

  name     = "for-each-${each.value}"
  location = var.location

  tags = var.tags

  for_each = toset(var.rg-names)

}
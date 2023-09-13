resource "azurerm_resource_group" "tfstate" {
  name     = "tfstate-resources"
  location = "West Europe"
}

resource "azurerm_storage_account" "example" {
  name                     = local.bucket_name
  resource_group_name      = azurerm_resource_group.tfstate.name
  location                 = azurerm_resource_group.tfstate.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}

resource "azurerm_storage_container" "example" {
  name                  = "tfstate"
  storage_account_name  = azurerm_storage_account.example.name
  container_access_type = "private"
}

resource "random_string" "random_suffix" {

    length = 8
    special = false
    lower = true
    upper = false
  
}

locals {
  bucket_name = "saurabhstorage${random_string.random_suffix.result}"
}
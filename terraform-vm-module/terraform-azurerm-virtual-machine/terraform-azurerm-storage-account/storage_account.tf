resource "random_id" "randomId" {
  keepers = {
    # Generate a new ID only when a new resource group is defined
    resource_group = var.storage_account_details.resource_group_name
  }

  byte_length = 8
}

resource "azurerm_storage_account" "mystorageaccount" {
  name                     = local.bucket_name
  resource_group_name      = var.storage_account_details.resource_group_name
  location                 = var.storage_account_details.location
  
  account_replication_type = var.storage_account_details.account_replication_type
  account_tier             = var.storage_account_details.account_tier

  tags = var.storage_account_details.tags
}

locals {
  bucket_name = "${var.storage_account_details.name}${random_id.randomId.hex}"
}
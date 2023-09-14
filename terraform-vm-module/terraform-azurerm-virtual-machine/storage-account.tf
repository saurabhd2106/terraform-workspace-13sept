module "mystorageaccount" {

  source = "./terraform-azurerm-storage-account"

  storage_account_details = {
    name = "saurabhstorage"
    resource_group_name = azurerm_resource_group.myterraformgroup.name
    location = azurerm_resource_group.myterraformgroup.location

    tags = var.tags
  }
  
}
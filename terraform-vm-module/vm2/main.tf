module "vm2" {

  source = "../terraform-azurerm-virtual-machine"

  resourcegroupName      = "saurabh-myresourcegroup"
  location               = "West Europe"
  tags                   = { "env" : "production" }
  vnetName               = "saurabh-myVnet"
  subnetName             = "saurabh-mySubnet"
  ipaddressName          = "saurabh-myPublicIpAddress"
  virtualMachineName     = "saurabh-myVm1"
  diskSize               = "Standard_DS1_v2"
  nicName                = "saurabh-myNic"
  nsgname                = "saurabh-myNsg"
  ssh_public_key         = "ssh-key"
  ssh_key_resource_group = "ssh-key-rg"
}
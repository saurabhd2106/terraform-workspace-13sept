module "vm1" {
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

  subnets = {
    "public_subnet" = {
      address_prefixes = ["10.0.1.0/24"]
    }

    "private_subnet" = {
      address_prefixes = ["10.0.2.0/24"]
    }
  }

  nic = {
    "my_nic" = {
      "ip_configuration" = {
        "name"                          = "myNicConfiguration"
        "private_ip_address_allocation" = "Dynamic"
        "subnet"                        = "public_subnet"

      }
    }
  }

  inbound_ports = {
    "ssh" = {
      "portNumber" : 22
      "priority" : 1000
    }

    "http" = {
      "portNumber" : 80
      "priority" : 1001
    }
  }

}
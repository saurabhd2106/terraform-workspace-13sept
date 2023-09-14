variable "resourcegroupName" {
  type = string
}

variable "location" {
  type = string
}

variable "tags" {
  type = map(any)
}

variable "vnetName" {
  type = string
}

variable "subnets" {

  type = map(object({

    address_prefixes = list(string)

  }))
  
}

variable "subnetName" {
  type = string
}

variable "ipaddressName" {
  type = string
}

variable "virtualMachineName" {
  type = string
}

variable "diskSize" {
  type    = string
  default = "Standard_DS1_v2"
}

variable "nicName" {
  type = string
}

variable "nsgname" {
  type = string
}

variable "inbound_ports" {

  type = map(object({
    portNumber = number
    priority = number
  }))
  
}

variable "ssh_public_key" {

  type = string
  
}

variable "ssh_key_resource_group" {

  type = string
  
}

variable "nic" {

  type = any
  
}
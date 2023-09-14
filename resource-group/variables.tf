variable "rg-name" {

  type = string

  description = "This is the name of resource group"

}

variable "rg-names" {

  type = list(string)

  default = ["my_rg_21", "my_rg_31"]
}

variable "location" {

  type = string

  default = "West Europe"

  description = "This is a variable for location"

}

variable "location_ws" {

  type = map(any)

  default = {
    dev  = "West Europe"
    prod = "East Europe"
  }

  description = "This is a variable for location"

}

variable "tags" {

  type = map(any)

  default = {
    "env" : "test"
  }

}
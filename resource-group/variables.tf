variable "rg-name" {

    type = string

    description = "This is the name of resource group"
  
}

variable "location" {

    type = string

    default = "West Europe"

    description = "This is a variable for location"
  
}

variable "tags" {

    type = map(any)

    default = {
      "env" : "test"
    }

}
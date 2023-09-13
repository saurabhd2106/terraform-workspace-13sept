variable "rg-name" {

    type = string

    description = "This is the name of resource group"
  
}

variable "rg-names" {

    type = list(string)

    default = [  "my_rg_2", "my_rg_3" ]
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
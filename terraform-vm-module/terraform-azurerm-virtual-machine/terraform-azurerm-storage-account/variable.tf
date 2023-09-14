variable "storage_account_details" {

  type = object({
    name                = string
    resource_group_name = string
    location            = string

    account_replication_type = optional(string, "LRS")
    account_tier             = optional(string, "Standard")

    tags = optional(any, {
        "env" : "test"
    }) 
  })
}

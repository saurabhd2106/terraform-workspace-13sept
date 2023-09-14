terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.72.0"
    }

    vault = {
      source = "hashicorp/vault"
      version = "3.20.1"
    }
  }

   
}

provider "azurerm" {
  # Configuration options

  features {

  }


  
 

}


provider "vault" {

  address = "http://127.0.0.1:8200"
  
}

data "vault_generic_secret" "secrets" {

  path = "azure/config"
  
}

output "secret_data" {

  value =  data.vault_generic_secret.secrets.data_json

  sensitive = true
  
}
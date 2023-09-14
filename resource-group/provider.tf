terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.72.0"
    }
  }
}

provider "azurerm" {
  # Configuration options

  features {

  }

  client_id       = "b6132866-56ea-4f9f-91f5-16af746ac288"
  client_secret   = "eUy8Q~EFM2_ds2Um3Z6x.TZyDOua~lSvMf1qDc_t"
  tenant_id       = "fa1e26bd-a406-4570-a09c-e0f3083223c6"
  subscription_id = "e0b47bea-67c1-44d3-a3ae-a494d59ab222"
}


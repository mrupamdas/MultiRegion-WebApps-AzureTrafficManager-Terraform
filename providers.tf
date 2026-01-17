terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.6.0"
    }
  }
}

provider "azurerm" {
  features {}
  client_id       = "Your-client-id"
  client_secret   = "Your-Client-secret"
  tenant_id       = "Your-tenant-id"
  subscription_id = "Your-Subsription-id"
}
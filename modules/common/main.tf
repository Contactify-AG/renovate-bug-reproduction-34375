terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.19.0"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "3.1.0"
    }
  }
}

provider "azurerm" {
  subscription_id                 = "213b9932-4407-4d6d-b959-77ca08ceda03"
  resource_provider_registrations = "none"
  features {}
}

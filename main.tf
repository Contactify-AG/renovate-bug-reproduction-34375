terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.28.0"
    }
  }
}

data "azurerm_key_vault_secret" "cert_secret" {
  count        = 1
  name         = "test"
  key_vault_id = provider::azurerm::normalise_resource_id("abc")
}

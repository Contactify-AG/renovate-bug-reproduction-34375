terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.19.0"
    }
  }
}

data "azurerm_key_vault_secret" "cert_secret" {
  count = length(azurerm_app_service_certificate_order.cert_order.certificates) > 0 ? 1 : 0
  name  = azurerm_app_service_certificate_order.cert_order.certificates[0].key_vault_secret_name
  # There seems to be a bug in Azure, so we correct the key_vault_id here
  key_vault_id = provider::azurerm::normalise_resource_id(azurerm_app_service_certificate_order.cert_order.certificates[0].key_vault_id)
}

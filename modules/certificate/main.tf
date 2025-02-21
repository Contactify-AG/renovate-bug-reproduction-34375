terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.19.0"
    }
  }
}

resource "azurerm_app_service_certificate_order" "cert_order" {
  name                = var.cert_order_name
  resource_group_name = var.resource_group.name
  location            = "global"
  distinguished_name  = "CN=${var.hostname}"
  product_type        = "WildCard"
}

data "azurerm_key_vault_secret" "cert_secret" {
  count = length(azurerm_app_service_certificate_order.cert_order.certificates) > 0 ? 1 : 0
  name  = azurerm_app_service_certificate_order.cert_order.certificates[0].key_vault_secret_name
  # There seems to be a bug in Azure, so we correct the key_vault_id here
  key_vault_id = provider::azurerm::normalise_resource_id(azurerm_app_service_certificate_order.cert_order.certificates[0].key_vault_id)
}

resource "azurerm_app_service_certificate" "cert_as" {
  count               = length(azurerm_app_service_certificate_order.cert_order.certificates) > 0 ? 1 : 0
  name                = azurerm_app_service_certificate_order.cert_order.certificates[0].certificate_name
  location            = var.resource_group.location
  resource_group_name = var.resource_group.name
  key_vault_secret_id = data.azurerm_key_vault_secret.cert_secret[0].versionless_id
}

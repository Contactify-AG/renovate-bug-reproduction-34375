terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.19.0"
    }
  }
}

resource "azurerm_app_service_certificate_order" "cert_order" {
  name                = "abc"
  resource_group_name = var.resource_group.name
  location            = "global"
  distinguished_name  = "CN=def"
  product_type        = "WildCard"
}

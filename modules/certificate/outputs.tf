output "platform_wildcard_config" {
  value = {
    hostname = var.hostname
    cert     = length(azurerm_app_service_certificate.cert_as) > 0 ? azurerm_app_service_certificate.cert_as[0] : null
  }
}

output "key_vault_secret_id" {
  value = length(data.azurerm_key_vault_secret.cert_secret) > 0 ? data.azurerm_key_vault_secret.cert_secret[0].versionless_id : null
}

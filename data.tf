data "azurerm_key_vault_secret" "cert_secret" {
  count        = 1
  name         = "test"
  key_vault_id = provider::azurerm::normalise_resource_id("abc")
}

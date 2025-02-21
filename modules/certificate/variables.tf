variable "hostname" {
  type        = string
  description = "App Service Hostname"
}

variable "resource_group" {
  description = "Resource Group"
}

variable "key_vault_id" {
  type        = string
  description = "Key Vault Id"
}

variable "tenant_id" {
  type        = string
  description = "Azure Tenant Id"
}

variable "cert_order_name" {
  type        = string
  description = "Certificate Order Name"
}

terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.103.0"
    }
  }
}

resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_storage_account" "example" {
  name                         = var.storage_account_name
  resource_group_name          = azurerm_resource_group.example.name
  location                     = var.location
  account_kind                 = var.account_kind
  account_tier                 = var.account_tier
  access_tier                  = var.access_tier
  replication_type             = var.replication_type
  allow_blob_public_access     = var.allow_blob_public_access
  allow_nested_items_to_be_public = var.allow_nested_items_to_be_public
  enable_https_traffic_only    = var.enable_https_traffic_only
  key_vault_id                 = var.key_vault_id
  key_vault_key_id             = var.key_vault_key_id
  key_vault_key_name           = var.key_vault_key_name

  tags = var.tags
}

resource "azurerm_storage_share" "example" {
  name                 = var.file_share_name
  storage_account_name = azurerm_storage_account.example.name
  quota                = var.file_share_quota
}

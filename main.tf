terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.103.1"
    }
  }
}

provider "azurerm" {
  features {}  # No special features enabled for the Azure provider
}


resource "azurerm_storage_account" "example" {
  name                         = var.storage_account_name
  resource_group_name          = var.resource_group_name
  location                     = var.location
  account_kind                 = var.account_kind
  account_tier                 = var.account_tier
  access_tier                  = var.access_tier
  enable_https_traffic_only    = var.enable_https_traffic_only
  account_replication_type     = var.account_replication_type
  ###allow_blob_public_access     = var.allow_blob_public_access
  allow_nested_items_to_be_public = var.allow_nested_items_to_be_public

  tags = var.tags
}

resource "azurerm_storage_share" "example" {
  name                 = var.file_share_name
  storage_account_name = azurerm_storage_account.example.name
  quota                = var.file_share_quota
}

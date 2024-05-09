provider "azurerm" {
  features {}
}



resource "azurerm_storage_account" "example" {
  name                     = var.storage_account_name
  resource_group_name      = "Terraform-RG"
  location                 = "Central India"
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  tags = var.tags
}



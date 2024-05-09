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

resource "azurerm_storage_container" "example" {
  name                  = var.container_name
  storage_account_name  = azurerm_storage_account.example.name
  container_access_type = "private"
}
resource "azurerm_storage_share" "example-1" {
  name                 = "myshare"
  storage_account_name = azurerm_storage_account.example.name
  quota                = 50
}

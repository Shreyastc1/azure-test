output "storage_account_id" {
  value = azurerm_storage_account.example.id
}

output "file_share_url" {
  value = azurerm_storage_share.example.url
}

output "storage_account_https_only_enabled" {
  value = azurerm_storage_account.example.enable_https_traffic_only
}



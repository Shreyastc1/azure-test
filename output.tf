output "storage_account_id" {
  value = azurerm_storage_account.example.id
}

output "storage_account_primary_access_key" {
  value = azurerm_storage_account.example.primary_access_key
}

output "storage_account_secondary_access_key" {
  value = azurerm_storage_account.example.secondary_access_key
}

output "storage_account_primary_blob_endpoint" {
  value = azurerm_storage_account.example.primary_blob_endpoint
}

output "storage_account_secondary_blob_endpoint" {
  value = azurerm_storage_account.example.secondary_blob_endpoint
}

output "storage_account_primary_queue_endpoint" {
  value = azurerm_storage_account.example.primary_queue_endpoint
}

output "storage_account_secondary_queue_endpoint" {
  value = azurerm_storage_account.example.secondary_queue_endpoint
}

output "storage_account_primary_table_endpoint" {
  value = azurerm_storage_account.example.primary_table_endpoint
}

output "storage_account_secondary_table_endpoint" {
  value = azurerm_storage_account.example.secondary_table_endpoint
}

output "storage_account_primary_file_endpoint" {
  value = azurerm_storage_account.example.primary_file_endpoint
}

output "storage_account_secondary_file_endpoint" {
  value = azurerm_storage_account.example.secondary_file_endpoint
}


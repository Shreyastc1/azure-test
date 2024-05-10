variable "resource_group_name" {
  description = "The name of the resource group in which to create the storage account."
}

variable "location" {
  description = "The location/region where the storage account will be created."
}

variable "storage_account_name" {
  description = "The name of the storage account to be created."
}

variable "account_kind" {
  description = "Kind of account. Options are BlobStorage, BlockBlobStorage, FileStorage, Storage, StorageV2."
  default     = "StorageV2"
}

variable "account_tier" {
  description = "Tier to use for this storage account. Options are Standard, Premium."
  default     = "Standard"
}

variable "access_tier" {
  description = "The access tier for BlobStorage, FileStorage, and StorageV2. Options are Hot, Cool."
  default     = "Hot"
}

variable "replication_type" {
  description = "The replication type for the storage account. Options are LRS, GRS, RAGRS, ZRS."
  default     = "LRS"
}

variable "allow_blob_public_access" {
  description = "Allow or disallow public access to blobs within this storage account."
  type        = bool
  default     = true
}

variable "allow_nested_items_to_be_public" {
  description = "Allow or disallow nested items within this account to opt into being public."
  type        = bool
  default     = true
}

variable "enable_https_traffic_only" {
  description = "Boolean flag which forces HTTPS if enabled."
  type        = bool
  default     = true
}

variable "key_vault_id" {
  description = "The ID of the Key Vault."
}

variable "key_vault_key_id" {
  description = "Key Vault Key Id used for Encryption Scope creation."
}

variable "key_vault_key_name" {
  description = "Key Vault Key Name used for CMK Encryption."
}

variable "file_share_name" {
  description = "The name of the file share to be created."
}

variable "file_share_quota" {
  description = "The quota limit for the file share (in GB)."
  default     = 1
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {}
}

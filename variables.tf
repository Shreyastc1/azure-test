variable "resource_group_name" {
  description = "The name of the resource group in which to create the storage account."
  default     = "Terraform-rg"
}

variable "location" {
  description = "The location/region where the storage account will be created."
  default     = "Central India"
}

variable "storage_account_name" {
  description = "The name of the storage account."
  default     = "testsa"
}

variable "account_tier" {
  description = "The storage account tier. Valid options are Standard or Premium."
  default     = "Standard"
}

variable "account_replication_type" {
  description = "The replication type to use for the storage account. Valid options are LRS, GRS, RAGRS, ZRS, or GZRS."
  default     = "LRS"
}

variable "container_name" {
  description = "The name of the storage container."
  default     = "test-container"
}

variable "tags" {
  description = "A map of tags to assign to the resources."
  type        = map(string)
  default     = {}
}

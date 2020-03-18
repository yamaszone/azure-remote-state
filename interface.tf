variable "location" {
  description = "Azure region (e.g. westus2)"
}

variable "resource_group_name" {
  description = "Name of resource group"
}

variable "account_tier" {
  default = "standard"
}

variable "storage_account_replication_type" {
  default = "LRS"
}

variable "storage_account_name" {
  description = "Storage account name (NOTE: can only consist of lowercase letters and numbers, and must be between 3 and 24 characters long)"
}

variable "storage_container_name" {
  description = "Name of the storage container"
}

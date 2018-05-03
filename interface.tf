variable "name" {
  description = "Name of resource"
}

variable "location" {
  default = "canadaeast"
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

variable "prefix" {
  default = "cds"
}

variable "environment" {
  default = "nonprod"
}

variable "storage_account_name" {
  default = "cdsremotestate"
}

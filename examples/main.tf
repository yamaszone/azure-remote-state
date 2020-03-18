module "azure_remote_state" {
  source              = "../"

  location = "westus2"
  resource_group_name = "rg-dev-tfstate"
  storage_account_name = "sadevtfstate"
  storage_container_name = "sc-dev-tfstate"
}

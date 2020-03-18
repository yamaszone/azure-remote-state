## Terraform module that will create Blob storage for Terraform's state.


## Usage

```
module "azure_remote_state" {
  source = "git@github.com:yamaszone/azure-remote-state.git?ref=v2.0.0"

  location               = "westus2"
  resource_group_name    = "rg-dev-tfstate"
  storage_account_name   = "sadevtfstate"
  storage_container_name = "sc-dev-tfstate"
}
```


Access resources from the remote state:


```
terraform {
  backend "azurerm" {
    storage_account_name = "sadevtfstate"
    resource_group_name  = "rg-dev-tfstate"
    container_name       = "sc-dev-tfstate"
    key                  = "nonprod/base/terraform.tfstate"
  }
}
```

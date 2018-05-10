## Terraform module that will create Blob storage for Terraform's state.


## Usage

```
module "azure_remote_state" {
  source              = "git@github.com:cds-snc/azure-remote-state"
  name                = "${var.prefix}-remote-state-${var.environment}"
  resource_group_name = "remotestate-rg"
}
```


Access resources from the remote state:


```
terraform {
  backend "azurerm" {
    storage_account_name = "cdsremotestate"
    resource_group_name  = "remotestate-rg"
    container_name       = "cds-remote-state-nonprod"
    key                  = "nonprod/base/terraform.tfstate"
  }
}
```

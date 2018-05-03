resource "azurerm_storage_container" "terraform_remote_state_container" {
  name                 = "${var.prefix}-remote-state-${var.environment}"
  resource_group_name  = "${azurerm_resource_group.remote_state_rg.name}"
  storage_account_name = "${azurerm_storage_account.remote_state_sa.name}"

  lifecycle {
    prevent_destroy = true
  }
}


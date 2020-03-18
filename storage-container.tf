resource "azurerm_storage_container" "terraform_remote_state_container" {
  name                 = var.storage_container_name
  storage_account_name = azurerm_storage_account.remote_state_sa.name

  lifecycle {
    prevent_destroy = true
  }
}

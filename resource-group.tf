resource "azurerm_resource_group" "remote_state_rg" {
  name     = var.resource_group_name
  location = var.location
}

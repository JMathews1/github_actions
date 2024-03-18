provider "azurerm" {
  features {}
}

# Create a new resource group
resource "azurerm_resource_group" "example_rg" {
  name     = var.resource_group_name
  location = var.location
}

# Create a new storage account
resource "azurerm_storage_account" "example_storage_account" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.example_rg.name
  location                 = azurerm_resource_group.example_rg.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
}

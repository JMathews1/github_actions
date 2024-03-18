provider "azurerm" {
  features {}
}

# Create a new resource group
resource "azurerm_resource_group" "example_rg" {
  name     = "exampleResourceGroup"
  location = "UK South"
}

# Create a new storage account
resource "azurerm_storage_account" "example_storage_account" {
  name                     = "examplestoraccount"
  resource_group_name      = azurerm_resource_group.example_rg.name
  location                 = azurerm_resource_group.example_rg.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}

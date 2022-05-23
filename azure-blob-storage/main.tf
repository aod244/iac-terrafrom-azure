resource "azurerm_resource_group" "example" {
  name     = var.name
  location = var.location
}

resource "azurerm_storage_account" "example" {
  name                     = "storageaccountname"
  resource_group_name      = var.account_name
  location                 = var.location
  account_tier             = var.acc_tier
  account_replication_type = var.acc_rep_type

  tags = {
    environment = var.environment
  }
}

data "azurerm_storage_container" "example" {
  name                 = "example-container-name"
  storage_account_name = "example-storage-account-name"
}

resource "azurerm_storage_blob" "example" {
  name                   = "my-awesome-content.zip"
  storage_account_name   = azurerm_storage_account.example.name
  storage_container_name = var.container_name
  type                   = "Block"
  source                 = var.source
}

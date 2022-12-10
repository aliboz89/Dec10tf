module "resource-group" {
  source  = "bcochofel/resource-group/azurerm"
  version = "1.4.1"
  location = "West US"
  name = "test_public_module_rg"
  # lock_level = "ReadOnly"
  tags = {
    "environment" = "dev"
    author = "ali"
    managedby = "Terraform"
  }
}

resource "azurerm_storage_account" "storageaccount" {
  name                     = "alictms10storage"
  resource_group_name      = module.resource-group.name
  location                 = module.resource-group.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "dev"
  }
}
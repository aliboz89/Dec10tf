output "rg_name" {
value=  module.resource-group.name 
}

output "rg_id" {
    value = module.resource-group

}

output "storage_name" {
value = azurerm_storage_account.storageaccount.name
}
output "name" {
  value = data.azurerm_resource_group.rgaz-tf-state.name
}

output "location" {
  value = data.azurerm_resource_group.rgaz-tf-state.location
}

output "tags" {
  value = data.azurerm_resource_group.rgaz-tf-state.tags
}

output "id" {
  value = data.azurerm_resource_group.rgaz-tf-state.id
}

output "rg" {
  value = data.azurerm_resource_group.rgaz-tf-state.name
}

output "sa" {
  value = azurerm_storage_account.tf-storage-account-state.name
}

output "container" {
  value = data.azurerm_storage_container.tf-state-files.name
}
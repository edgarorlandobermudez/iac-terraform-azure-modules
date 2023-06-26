resource "azurerm_storage_account" "tf-storage-account-state" {
  name                     = "${var.tf_storage_account_state}"
  resource_group_name      = data.azurerm_resource_group.rgaz-tf-state.name
  location                 = data.azurerm_resource_group.rgaz-tf-state.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

    tags = {
      environment = "${var.enviroment}"
      CostCenter = "${var.CostCenter}"
      Owner = "${var.Owner}"
    }
  depends_on = [data.azurerm_resource_group.rgaz-tf-state]
}

data "azurerm_storage_account" "tf-storage-account-state" {
  name                      = "${var.tf_storage_account_state}"
  resource_group_name       = data.azurerm_resource_group.rgaz-tf-state.name
  depends_on                = ["azurerm_storage_account.tf-storage-account-state"]
}

resource "azurerm_storage_container" "tf-state-files" {
  name                  = "${var.tf_state_files}"
  storage_account_name  = "${data.azurerm_storage_account.tf-storage-account-state.name}"
  container_access_type = "private"
}

data "azurerm_storage_container" "tf-state-files" {
  name = "${var.tf_state_files}"
  storage_account_name = "${data.azurerm_storage_account.tf-storage-account-state.name}"
  depends_on  = [azurerm_storage_container.tf-state-files]
}

resource "azurerm_resource_group" "rgaz-tf-state" {
  name     = "${var.resource_group_name}"
  location = "${var.location}"
    tags = {
      environment = "${var.enviroment}"
      CostCenter = "${var.CostCenter}"
      Owner = "${var.Owner}"
    }
}

data "azurerm_resource_group" "rgaz-tf-state" {
  name = "${var.resource_group_name}"
  depends_on = ["azurerm_resource_group.rgaz-tf-state"]
}
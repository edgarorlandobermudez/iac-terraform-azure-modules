terraform {
  required_version = ">=1.4.6"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~>3.61.0"
    }
    azuread = {
      source = "hashicorp/azuread"
      version = "~>2.39.0"
    }
    random = {
      source = "hashicorp/random"
      version = "~>3.5.1"
    }
  }

# Terrafrom State Storage to Azure Storage Container
  backend "azurerm" {
     resource_group_name = "RGAZ-TF-STATE"
     storage_account_name = "tfstorageaccountstate"
     container_name = "tfstatefiles"
     key = "terraform.tfstate"
  }
}

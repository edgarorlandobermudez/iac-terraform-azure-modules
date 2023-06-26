variable "location" {
  type = string
  default = "southcentralus"
  description = "This will be the location whre all resources will be created"
}

variable "enviroment" {
  type = string
  default = "Develop"
  description = "This variable defines the Environment"
}

variable "CostCenter" {
  type = string
  default = "Infra"
  description = "CostCenter"
}

variable "Owner" {
  type = string
  default = "Owner"
  description = "edgarorlandobermudez@gmail.com"
}

variable "resource_group_name" {
  type = string
  default = "RGAZ-TF-STATE"
  description = "This variable defines the resource group name"
}

variable "tf_storage_account_state" {
  type = string
  default = "tfstorageaccountstate"
  description = "tf-storage-rg"
}

variable "tf_state_files" {
  type = string
  default = "tfstatefiles"
  description = "tf_state_files"
}

variable "tf_state_files_name" {
  type = string
  default = "terraform.tfstate"
  description = "terraform.tfstate"
}
terraform {
  backend "azurerm" {
    storage_account_name = "azurebackendstorage"
    container_name = "backend"
    key = "terraform.tfstate"
    access_key = ""
  }
}
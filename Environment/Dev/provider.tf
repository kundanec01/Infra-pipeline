terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.56.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "kundan-rg"
    storage_account_name = "kkstorageaccn123"
    container_name       = "tfstate"
    key                  = "dev/terraform.tfstate"
  }
}



provider "azurerm" {
  features {}
  subscription_id = "3f7835c1-a9cb-445d-b664-2abc356642bd"

}

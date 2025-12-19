terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.56.0"
    }
  }
  backend "azurerm" {
    
  }
}



provider "azurerm" {
  features {}
  subscription_id = "3f7835c1-a9cb-445d-b664-2abc356642bd"

}

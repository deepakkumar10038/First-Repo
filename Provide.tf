terraform {
    required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "deep56"
    storage_account_name = "deep56stg"
    container_name       = "deepcnt"
    key                  = "Dev.terraform.tfstate"
  }
  }
  


provider "azurerm" {
  subscription_id = "bcf304d8-21b8-4358-9c77-54b5dd26f938"
  features {}
}

# Set the Azure Provider source and version being used
terraform {
  required_version = ">= 0.14"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.1.0"
    }
  }
}

# Configure the Microsoft Azure provider
provider "azurerm" {
  features {}
}

# Create a Resource Group if it doesn’t exist and do update..
resource "azurerm_resource_group" "tfexample" {
  name     = "bw-tf-rg"
  location = "West Europe"
}

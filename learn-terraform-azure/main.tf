# Configure the Azure provider
terraform {
    cloud {
    organization = "GenAi-sandbox"
    workspaces {
      name = "Terraform-Tutorials"
    }
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource-group-name
  location = "australiasoutheast"
  tags = {
    Environment = "Terraform Getting Started"
    Team = "DevOps"
  }
}

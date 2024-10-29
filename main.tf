terraform {
  cloud {
    # The name of your Terraform Cloud organization.
    organization = "SoftwareOne"

    # The name of the Terraform Cloud workspace to store Terraform state files in.
    workspaces {
      name = "azure-project-1"
    }
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.54.0"
    }
  }
}

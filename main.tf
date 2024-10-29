terraform {
  required_version = ">=1.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.52"
    }
    azapi = {
      source  = "azure/azapi"
      version = "~>1.5"
    }
  }

  cloud {
    # The name of your Terraform Cloud organization.
    organization = "SoftwareOne"

    # The name of the Terraform Cloud workspace to store Terraform state files in.
    workspaces {
      name = "azure-project-1"
    }
  }
}

terraform {
  required_providers {
    azapi = {
      source = "azure/azapi"
    }
  }

  backend "remote" {
    # The name of your Terraform Cloud organization.
    organization = "SoftwareOne"

    # The name of the Terraform Cloud workspace to store Terraform state files in.
    workspaces {
      name = "azure-project-1"
    }
  }
}

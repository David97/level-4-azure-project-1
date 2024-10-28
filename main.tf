terraform {
  backend "azurerm" {
    resource_group_name  = "hkjc-landing-zone-tf-state"
    storage_account_name = "hkjclandingzonetfstate"
    container_name       = "hkjc-landing-zone-tf-state"
    key                  = "non-prod/terraform.tfstate"

    backend "remote" {
      # The name of your Terraform Cloud organization.
      organization = "SoftwareOne"

      # The name of the Terraform Cloud workspace to store Terraform state files in.
      workspaces {
        name = "azure-project-1"
      }
    }
  }
}

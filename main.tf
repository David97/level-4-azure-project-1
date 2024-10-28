terraform {
  backend "azurerm" {
    resource_group_name  = "hkjc-landing-zone-tf-state"
    storage_account_name = "hkjclandingzonetfstate"
    container_name       = "hkjc-landing-zone-tf-state"
    key                  = "non-prod/terraform.tfstate"
  }
}

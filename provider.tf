provider "azurerm" {
  features {}
  use_oidc = true
  use_cli  = false
}

provider "azapi" {
  use_oidc = true
}

module "resource_group" {
  source = "git@github.com:David97/azure-terraform-module-monorepo.git//base/resource-group?ref=v1.0.4"

  resource_groups = [
    {
      location = "eastasia"
      name     = "test-henry-4"
      tags = {
        "Name" = "Test Henry"
      }
    },
    {
      location = "eastasia"
      name     = "test-swo-4"
      tags = {
        "Name" = "Test SWO"
      }
    }
  ]
}

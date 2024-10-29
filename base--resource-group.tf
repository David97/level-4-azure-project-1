module "resource_group" {
  source = "git@github.com:David97/azure-terraform-module-monorepo.git//base/resource-group?ref=feature/to-update-module"

  resource_groups = [
    {
      location = "eastasia"
      name     = "test-henry-2"
      tags = {
        "Name" = "Test Henry"
      }
    },
    {
      location = "eastasia"
      name     = "test-swo-2"
      tags = {
        "Name" = "Test SWO"
      }
    }
  ]
}

provider "azurerm" {
  features {}
}

locals {
    resource_group_names = {
        rg1 = "eastus",
        rg2 = "eastus2",
        rg3 = "westus"
    }
}

resource "azurerm_resource_group" "rg" {
  for_each = local.resource_group_names
  name     = each.key
  location = each.value
}

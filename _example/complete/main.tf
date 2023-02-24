provider "azurerm" {
  features {}
}

module "resource_group" {
  source  = "clouddrove/resource-group/azure"
  version = "1.0.0"

  name        = "logic-app"
  environment = "test"
  label_order = ["name", "environment"]
  location    = "East US"
}

module "logic-app" {
  source = "../../"

  enabled             = true
  name                = "test1"
  location            = module.resource_group.resource_group_location
  resource_group_name = module.resource_group.resource_group_name
}
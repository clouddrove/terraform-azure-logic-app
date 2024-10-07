provider "azurerm" {
  features {}
  subscription_id = "000001-11111-1223-XXX-XXXXXXXXXXXX"
}

module "resource_group" {
  source  = "clouddrove/resource-group/azure"
  version = "1.0.2"

  name        = "logic-app"
  environment = "test"
  label_order = ["name", "environment"]
  location    = "East US"
}

module "logic-app" {
  source = "clouddrove/logic-app/azure"

  enabled             = true
  name                = "logic-app"
  environment         = "test"
  label_order         = ["name", "environment"]
  location            = module.resource_group.resource_group_location
  resource_group_name = module.resource_group.resource_group_name
}

#Module      : LABEL
#Description : Terraform label module variables.
variable "name" {
  type        = string
  default     = ""
  description = "Name  (e.g. `app` or `cluster`)."
}

variable "environment" {
  type        = string
  default     = ""
  description = "Environment (e.g. `prod`, `dev`, `staging`)."
}

variable "tags" {
  type        = map(any)
  default     = {}
  description = "Additional tags (e.g. map(`BusinessUnit`,`XYZ`)."
}

variable "managedby" {
  type        = string
  default     = "anmol@clouddrove.com"
  description = "ManagedBy, eg 'CloudDrove' or 'AnmolNagpal'."
}

variable "label_order" {
  type        = list(any)
  default     = []
  description = "Label order, e.g. `name`,`application`."
}
variable "repository" {
  type        = string
  default     = ""
  description = "Terraform current module repo"
}

## Common Variables

variable "enabled" {
  type        = bool
  default     = false
  description = "Flag to control the module creation."
}

variable "resource_group_name" {
  type        = string
  default     = ""
  description = "The name of the resource group in which to create the virtual network."
}

variable "location" {
  type        = string
  default     = ""
  description = "Location where resource should be created."
}

variable "delete" {
  type        = string
  default     = "60m"
  description = "Used when deleting the Resource Group."
}

## Logic App
variable "source_arm_resource_id" {
  type        = string
  default     = ""
  description = "The ID of the Event Grid System Topic ARM Source. Changing this forces a new Event Grid System Topic to be created. e.g. Storage account id or Resource group id or any serivec id."
}

variable "workflow_schema" {
  type        = string
  default     = null
  description = "Specifies the Schema to use for this Logic App Workflow. Defaults to https://schema.management.azure.com/providers/Microsoft.Logic/schemas/2016-06-01/workflowdefinition.json#."
}

variable "workflow_parameters" {
  type        = any
  default     = null
  description = "Specifies a map of Key-Value pairs of the Parameter Definitions to use for this Logic App Workflow. The key is the parameter name, and the value is a JSON encoded string of the parameter definition (see: https://docs.microsoft.com/azure/logic-apps/logic-apps-workflow-definition-language#parameters)."
}

variable "parameter" {
  type        = map(any)
  default     = null
  description = "A map of Key-Value pairs."
}

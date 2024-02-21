output "id" {
  value       = try(azurerm_logic_app_workflow.main[0].id, null)
  description = "The Logic App Workflow ID."
}

output "access_endpoint" {
  value       = try(azurerm_logic_app_workflow.main[*].access_endpoint, null)
  description = "The Access Endpoint for the Logic App Workflow."
}

# output "endpoint_url" {
#   value       = azurerm_template_deployment.workflow.outputs["endpointUrl"]
#   description = "The Access Endpoint for the Logic App Workflow."
# }
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| enabled | Flag to control the module creation. | `bool` | `false` | no |
| environment | Environment (e.g. `prod`, `dev`, `staging`). | `string` | `""` | no |
| label\_order | Label order, e.g. `name`,`application`. | `list(any)` | `[]` | no |
| location | Location where resource should be created. | `string` | `""` | no |
| managedby | ManagedBy, eg 'CloudDrove' or 'AnmolNagpal'. | `string` | `"anmol@clouddrove.com"` | no |
| name | Name  (e.g. `app` or `cluster`). | `string` | `""` | no |
| repository | Terraform current module repo | `string` | `""` | no |
| resource\_group\_name | The name of the resource group in which to create the virtual network. | `string` | `""` | no |
| tags | Additional tags (e.g. map(`BusinessUnit`,`XYZ`). | `map(any)` | `{}` | no |
| workflow\_parameters | Specifies a map of Key-Value pairs of the Parameter Definitions to use for this Logic App Workflow. The key is the parameter name, and the value is a JSON encoded string of the parameter definition (see: https://docs.microsoft.com/azure/logic-apps/logic-apps-workflow-definition-language#parameters). | `any` | `null` | no |
| workflow\_schema | Specifies the Schema to use for this Logic App Workflow. Defaults to https://schema.management.azure.com/providers/Microsoft.Logic/schemas/2016-06-01/workflowdefinition.json#. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| access\_endpoint | The Access Endpoint for the Logic App Workflow. |
| id | The Logic App Workflow ID. |


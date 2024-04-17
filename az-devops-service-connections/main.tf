resource "azuredevops_project" "example_project" {
  name               = "ExampleProject"
  visibility         = "private"
  version_control    = "Git"
  work_item_template = "Agile"
  description        = "Managed by Terraform"
}

resource "azuread_application" "example_appreg" {
  display_name = "ExampleAppReg"
}

resource "azuredevops_serviceendpoint_azurerm" "example_service_connection" {
  project_id                             = azuredevops_project.example_project.id
  service_endpoint_name                  = "example-federated-sc"
  description                            = "Managed by Terraform"
  service_endpoint_authentication_scheme = "WorkloadIdentityFederation"
  credentials {
    serviceprincipalid = azuread_application.example_appreg.client_id
  }
  azurerm_spn_tenantid      = var.tenant_id
  azurerm_subscription_id   = var.subscription_id
  azurerm_subscription_name = var.subscription_name
}

resource "azuread_application_federated_identity_credential" "example_federated_identity_cred" {
  display_name   = "example-federated-identity-credential"
  application_id = azuread_application.example_appreg.id
  audiences      = ["api://AzureADTokenExchange"]
  issuer         = azuredevops_serviceendpoint_azurerm.example_service_connection.workload_identity_federation_issuer
  subject        = azuredevops_serviceendpoint_azurerm.example_service_connection.workload_identity_federation_subject
}

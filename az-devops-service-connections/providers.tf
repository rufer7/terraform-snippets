provider "azuread" {
  tenant_id = var.tenant_id
}

# IMPORTANT NOTE: try to use service principal authentication for azuredevops provider instead of Personal Access Token (PAT)!
# If you still use PAT authentication, make sure you don't hardcode the PAT and don't commit it to your source code repository!
provider "azuredevops" {
  org_service_url       = var.organization_url
  personal_access_token = "VALID_PAT_HERE" # PAT with scopes Project and Team "Read, write & manage"; Code "Read, write & manage"; Service Connections "Read, query, & manage"
}

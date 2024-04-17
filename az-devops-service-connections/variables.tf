variable "organization_url" {
  type        = string
  description = "URL of Azure DevOps organization"
}

variable "personal_access_token" {
  type        = string
  description = "Azure DevOps personal access token with scopes Project and Team 'Read, write & manage'; Code 'Read, write & manage'; Service Connections 'Read, query, & manage'"
}

variable "subscription_name" {
  type        = string
  description = "Azure subscription name"
}

variable "subscription_id" {
  type        = string
  description = "Azure subscription ID"
}

variable "tenant_id" {
  type        = string
  description = "Microsoft Entra ID tenant ID"
}

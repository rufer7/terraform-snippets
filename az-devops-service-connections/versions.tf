terraform {
  required_version = "~> 1.6.6"
  required_providers {
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 2.48.0"
    }
    azuredevops = {
      source  = "microsoft/azuredevops"
      version = ">= 1.0.1"
    }
  }
}

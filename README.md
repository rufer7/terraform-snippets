# terraform-snippets

Terraform code snippets for different use cases

## Azure DevOps service connections

Snippets for automating the creation of Azure DevOps service connections of type `Azure Resource Manager` with authentication method `Workload Identity Federation` using Terraform.

> [!NOTE]
> The terraform code can be executed as follows.

```bash
terraform init

terraform plan -var tenant_id="TENANT_ID" -var subscription_id="SUBSCRIPTION_ID" -var subscription_name="SUBSCRIPTION_NAME" -var organization_url="https://dev.azure.com/ORGANIZATION_NAME/" -var personal_access_token="PERSONAL_ACCESS_TOKEN"

terraform apply -var tenant_id="TENANT_ID" -var subscription_id="SUBSCRIPTION_ID" -var subscription_name="SUBSCRIPTION_NAME" -var organization_url="https://dev.azure.com/ORGANIZATION_NAME/" -var personal_access_token="PERSONAL_ACCESS_TOKEN"
```

For sources see [here](./az-devops-service-connections)

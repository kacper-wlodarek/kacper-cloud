terraform {
  backend "azurerm" {
    container_name       = "tfstate"
    key                  = "kacper-playground"
    resource_group_name  = "tl-prd-aue-rg-devops"
    storage_account_name = "tlprdaueststatealz"
    use_azuread_auth     = true
    # Using Managed Identities is not supported from anything other than a VM / VM Scaleset at the moment.
    # https://github.com/hashicorp/terraform-provider-azurerm/issues/5558
    subscription_id = "b62bcb25-4b55-4b54-8699-7aab9698a969"
    tenant_id       = "d93d9ab1-a1ed-4bde-9725-0cdfdea791d2"
  }
}
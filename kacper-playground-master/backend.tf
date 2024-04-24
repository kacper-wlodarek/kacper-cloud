terraform {
  backend "azurerm" {
    container_name       = "tfstate"
    key                  = "xyz"
    resource_group_name  = "kacper-play"
    storage_account_name = "kacperstorageaccount"
    use_azuread_auth     = true
    # Using Managed Identities is not supported from anything other than a VM / VM Scaleset at the moment.
    # https://github.com/hashicorp/terraform-provider-azurerm/issues/5558
    subscription_id = "xyqzcqwe-xxxx-zzzz-8699-7aab9698a969"
    tenant_id       = "xxxxxxxx-yyyy-yyyy-9725-0cdfdea791d2"
  }
}

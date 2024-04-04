resource "azurerm_linux_function_app" "kacperwlodarek_application" {
  name                = "kacperwlodarekapplication1"
  resource_group_name = azurerm_resource_group.kacper_playground.name
  location            = "North Europe"

  storage_account_name       = azurerm_storage_account.kwazure.name
  storage_account_access_key = azurerm_storage_account.kwazure.primary_access_key
  service_plan_id            = azurerm_service_plan.service_plan.id

  site_config {}
}
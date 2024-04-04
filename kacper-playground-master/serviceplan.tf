resource "azurerm_service_plan" "service_plan" {
  name                = "service-plan"
  resource_group_name = azurerm_resource_group.kacper_playground.name
  location            = "North Europe"
  os_type             = "Linux"
  sku_name            = "B1"
}


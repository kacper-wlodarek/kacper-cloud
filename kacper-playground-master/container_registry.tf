resource "azurerm_container_registry" "kacper_container_acr" {
  name                = "kacpercontaineracr"
  resource_group_name = azurerm_resource_group.kacper_playground.name
  location            = azurerm_resource_group.kacper_playground.location
  sku                 = "Basic"
  admin_enabled       = false
}
resource "azurerm_dns_zone" "kacperwlodarek" {
  name                = "kacperwlodarek.xyz"
  resource_group_name = azurerm_resource_group.kacper_playground.name
}
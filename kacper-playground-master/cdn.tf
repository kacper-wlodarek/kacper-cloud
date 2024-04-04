resource "azurerm_cdn_profile" "kacperwlodarek_cdn_profile" {
  name                = "kacperwlodarek-cdn-profile"
  location            = "northeurope"
  resource_group_name = azurerm_resource_group.kacper_playground.name
  sku                 = "Standard_Microsoft"
}

resource "azurerm_cdn_endpoint" "kacperwlodarek_cdn_endpoint" {
  name                = "kacperwlodarek-cdn-endpoint"
  profile_name        = azurerm_cdn_profile.kacperwlodarek_cdn_profile.name
  location            = "northeurope"
  resource_group_name = azurerm_resource_group.kacper_playground.name

  origin {
    name      = "xyz"
    host_name = "www.kacperwlodarek.xyz"
  }
}
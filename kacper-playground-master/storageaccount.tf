resource "azurerm_storage_account" "kwazure" {
  name = "kwazure"
  resource_group_name      = "kacper-playground"
  location                 = "polandcentral"
  account_tier             = "Standard"
  account_replication_type = "LRS"
  allow_nested_items_to_be_public   = false
  cross_tenant_replication_enabled  = false
  
  static_website {
    index_document       = "index.html"
    error_404_document   = "404.html"
  }

  custom_domain {
    name          = "www.kacperwlodarek.xyz" 
  }

  network_rules {
    default_action = "Deny"
    ip_rules = [
      "159.196.85.197",
      "31.42.10.251",
      "20.108.227.185",
    ]
  }
}
resource "azurerm_virtual_network" "kw-vn01" {
  name                = "kw-vn01"
  address_space       = ["10.0.0.0/16"]
  location            = "polandcentral"
  resource_group_name = "kacper-playground"

  subnet {
    name = "default"
    address_prefix = "10.0.0.0/24"
  }
}
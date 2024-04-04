resource "azurerm_storage_container" "webcontainer" {
  name                  = "$web"
  storage_account_name  = azurerm_storage_account.kwazure.name
  container_access_type = "private"
}

resource "azurerm_storage_blob" "files" {
  for_each = module.template_files.files

  name                   = replace(each.value.source_path, "${path.module}/site/", "")
  storage_account_name   = azurerm_storage_account.kwazure.name
  storage_container_name = azurerm_storage_container.webcontainer.name
  type                   = "Block"
  source                 = each.value.source_path
  content_type           = each.value.content_type
}

module "template_files" {
  source   = "hashicorp/dir/template"
  base_dir = "${path.module}/site"
}

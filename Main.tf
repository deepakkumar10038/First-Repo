

resource "azurerm_resource_group" "rg" {
  name     = "deep-rg"
  location = "centralus"
}
resource "azurerm_storage_account" "stg" {
  depends_on = [ azurerm_resource_group.rg ]
  name                     = "deep1stg"
  resource_group_name      = "deep-rg"
  location                 = "centralus"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
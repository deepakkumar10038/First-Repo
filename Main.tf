

resource "azurerm_resource_group" "rg" {
  name     = "deep56"
  location = "centralus"
}
resource "azurerm_storage_account" "stg" {
  name                     = "deepstg58"
  resource_group_name      = "deep56"
  location                 = "centralus"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
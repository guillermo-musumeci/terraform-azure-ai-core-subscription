###################################
## DNS Private Zones - Resources ##
###################################

## Private DNS Zone for Database ##
resource "azurerm_private_dns_zone" "database" {
  name                = "privatelink.database.core.windows.net"
  resource_group_name = azurerm_resource_group.network-rg.name
}

## Private DNS Zone for OpenAI ##
resource "azurerm_private_dns_zone" "openai" {
  name                = "privatelink.openai.azure.com"
  resource_group_name = azurerm_resource_group.network-rg.name
}

## Private DNS Zone for AI Search ##
resource "azurerm_private_dns_zone" "ai_search" {
  name                = "privatelink.search.windows.net"
  resource_group_name = azurerm_resource_group.network-rg.name
}

## Private DNS Zone for SQL Server ##
resource "azurerm_private_dns_zone" "sql_server" {
  name                = "privatelink.database.windows.net"
  resource_group_name = azurerm_resource_group.network-rg.name
}

## Private DNS Zone for Storage Blob ##
resource "azurerm_private_dns_zone" "blob" {
  name                = "privatelink.blob.core.windows.net"
  resource_group_name = azurerm_resource_group.network-rg.name
}

## Private DNS Zone for Storage DFS ##
resource "azurerm_private_dns_zone" "dfs" {
  name                = "privatelink.dfs.core.windows.net"
  resource_group_name = azurerm_resource_group.network-rg.name
}

## Private DNS Zone for Storage Table ##
resource "azurerm_private_dns_zone" "table" {
  name                = "privatelink.table.core.windows.net"
  resource_group_name = azurerm_resource_group.network-rg.name
}

## Private DNS Zone for AppServices (Function/WebApp) ##
resource "azurerm_private_dns_zone" "appservices" {
  name                = "privatelink.azurewebsites.net"
  resource_group_name = azurerm_resource_group.network-rg.name
}

## Private DNS Zone for KeyVault ##
resource "azurerm_private_dns_zone" "keyvault" {
  name                = "privatelink.vaultcore.azure.net"
  resource_group_name = azurerm_resource_group.network-rg.name
}

## Private DNS Zone for Azure Machine Learning ##
resource "azurerm_private_dns_zone" "azureml" {
  name                = "privatelink.api.azureml.ms"
  resource_group_name = azurerm_resource_group.network-rg.name
}

## Private DNS Zone for Azure Machine Learning Notebooks ##
resource "azurerm_private_dns_zone" "notebooks" {
  name                = "privatelink.notebooks.azure.net"
  resource_group_name = azurerm_resource_group.network-rg.name
}

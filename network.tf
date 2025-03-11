##############################
## Core Network - Resources ##
##############################

# Create a resource group for network
resource "azurerm_resource_group" "network-rg" {
  name     = "${lower(var.app_name)}-${var.environment}-rg"
  location = var.location
  tags = {
    application = var.app_name
    environment = var.environment
  }
}

# Create the network VNET
resource "azurerm_virtual_network" "network-vnet" {
  name     = "${lower(var.app_name)}-${var.environment}-vnet"
  address_space       = [var.network-vnet-cidr]
  resource_group_name = azurerm_resource_group.network-rg.name
  location            = azurerm_resource_group.network-rg.location
  tags = {
    application = var.app_name
    environment = var.environment
  }
}

# Create a subnet for Network
resource "azurerm_subnet" "network-subnet" {
  name                 = "${lower(var.app_name)}-${var.environment}-subnet"
  address_prefixes     = [var.network-subnet-cidr]
  virtual_network_name = azurerm_virtual_network.network-vnet.name
  resource_group_name  = azurerm_resource_group.network-rg.name
}

##############################
## Core Network - Variables ##
##############################

# azure region
variable "location" {
  type        = string
  description = "Azure region where the resource group will be created"
  default     = "north europe"
}

variable "network-vnet-cidr" {
  type        = string
  description = "The CIDR of the network VNET"
}

variable "network-subnet-cidr" {
  type        = string
  description = "The CIDR for the subnet"
}

###########################
## Core Network - Output ##
###########################

output "core_resource_group_name" {
  value = azurerm_resource_group.network-rg.name
}

output "customer_vnet_name" {
  value = azurerm_virtual_network.network-vnet.name
}

output "customer_subnet_name" {
  value = azurerm_subnet.network-subnet.name
}

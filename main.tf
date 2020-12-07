provider "azurerm" {
    version = "=2.38.0"
	features{}
}

# Creates a resources group
resource azurerm_resource_group rg {
	name     = var.rg_name
	location = var.region
}

resource "azurerm_container_registry" "acr" {
  name                     = var.acrname
  resource_group_name      = var.rg_name
  location                 = var.region
  sku                      = "Basic"
  admin_enabled            = true
}

output "admin_password" {
  value       = azurerm_container_registry.acr.admin_password
  description = "The object ID of the user"
}
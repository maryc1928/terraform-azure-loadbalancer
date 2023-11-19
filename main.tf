resource "azurerm_resource_group" "loadbalancer-01" {
  name     = var.loadbalancer_resource_group_name
  location = var.location
}

resource "azurerm_public_ip" "public-ip-01" {
  name                = var.public_ip_name
  location            = azurerm_resource_group.loadbalancer-01.location
  resource_group_name = azurerm_resource_group.loadbalancer-01.name
  allocation_method   = "Dynamic"
  sku                 = "Standard"
}

resource "azurerm_lb" "loadbalancer-01" {
  name                = var.loadbalancer_name
  location            = azurerm_resource_group.loadbalancer-01.location
  resource_group_name = azurerm_resource_group.loadbalancer-01.name

  frontend_ip_configuration {
    name                 = "PublicIPAddress"
    public_ip_address_id = azurerm_public_ip.public-ip-01.id
  }
}

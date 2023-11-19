output "public_ip_address" {
  value = azurerm_public_ip.public-ip-01.ip_address
}
output "loadbalancer_id" {
  value = azurerm_lb.loadbalancer-01.id
}
output "loadbalancer_name" {
  value = azurerm_lb.loadbalancer-01.name
}
output "loadbalancer_sku" {
  value = azurerm_lb.loadbalancer-01.sku
}
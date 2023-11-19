variable "keyvault_name" {
  type        = string
  description = "The name of the key vault"
}
variable "keyvault_resource_group_name" {
  type        = string
  description = "The name of the resource group in which the key vault is located"
}
variable "secret_name" {
  type        = string
  description = "The name of the secret"
}
variable "loadbalancer_resource_group_name" {
  type        = string
  description = "The name of the resource group in which the load balancer is located"
}
variable "location" {
  type        = string
  description = "The location/region where the load balancer is located"
}
variable "public_ip_name" {
  type        = string
  description = "The name of the public IP address"
}
variable "loadbalancer_name" {
  type        = string
  description = "The name of the load balancer"
}
  

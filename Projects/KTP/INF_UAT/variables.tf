variable "subscription_id" {
  description = "Subscription ID to place the Resources"
}

variable "rg_name" {
  description = "Name of Resource Group name"
}

variable "rg_location" {
  description = "The location/region to keep all your network resources"
}

variable "rg_tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}

variable "vnet_address_space" {
  type        = string
  description = "vnet address CIDR"
}

variable "dns_servers" {
  type        = list(string)
  description = "DNS server IPs"
  default     = [""]
}

variable "customer_number" {
  type        = number
  description = "customer number should be 00|01|02|03"
}

variable "product_region" {
  type        = string
  description = "productname along with the region for which geography customers it serves"
}

variable "subnets" {
  description = "For each subnet, create an object that contain fields"
  default     = {}
}
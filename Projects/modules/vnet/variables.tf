variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "resource_group_location" {
  description = "The location of the resource"
  type        = string
  default     = "eastus"
}

variable "address_space" {
  description = "The address space of the vnet"
  type        = string
}

variable "vnet_name" {
  description = "The name of the virtual network"
  type        = string
}

variable "dns_servers" {
  type        = list(string)
  description = "DNS server IPs"
  default     = [""]
}

variable "tags" {
  type = map(string)
  default = {}
}
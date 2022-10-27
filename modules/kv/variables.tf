# ----------------------------------------------------------------------------------
# THIS CODE AND INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND, 
# EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE IMPLIED WARRANTIES 
# OF MERCHANTABILITY AND/OR FITNESS FOR A PARTICULAR PURPOSE.
# ----------------------------------------------------------------------------------

variable "name" {
  description = "Name of the Key Vault."
  type        = string
  default     = ""
}

variable "location" {
  description = "Location of the Key Vault."
  type        = string
  default     = ""
}

variable "rg" {
  description = "RG of the Key Vault."
  type        = string
  default     = ""
}

variable "sku" {
  description = "SKU of the Key Vault."
  type        = string
  default     = ""
}

variable "tags" {
  type = map
}


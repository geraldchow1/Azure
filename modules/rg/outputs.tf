# ----------------------------------------------------------------------------------
# THIS CODE AND INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND, 
# EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE IMPLIED WARRANTIES 
# OF MERCHANTABILITY AND/OR FITNESS FOR A PARTICULAR PURPOSE.
# ----------------------------------------------------------------------------------

output "name" {
    value = azurerm_resource_group.rg.name
}

output "location" {
    value = azurerm_resource_group.rg.location
}
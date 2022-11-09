subscription_id    = "25832bd5-bc87-4b9d-a4c9-cf89762fce24"
rg_name            = "FMM-AZURE-TF-RG"
rg_location        = "East US"
product_region     = "INFUS"
customer_number    = 00
vnet_address_space = "10.11.0.0/24"
dns_servers        = ["10.163.2.11", "10.163.2.12"]
subnets = {
  cmsappqa = {
    subnet_address_prefix = "10.11.0.0/25"
    nsg_inbound_rules     = []
    nsg_outbound_rules = [
      # [name, priority, direction, access, protocol, source_address_prefix, source_address_prefixes,destination_port_range, destination_port_ranges, destination_address_prefix, destination_address_prefixes]
      # To use defaults, use "" without adding any value and to use this subnet as a source or destination prefix.
      ["ssh_in", "200", "Inbound", "Allow", "Tcp", "*", [], "22", [], "VirtualNetwork", []],
      ["mysql_in", "203", "Inbound", "Allow", "Tcp", "*", [], "3306", [], "VirtualNetwork", []],
      ["http_in", "206", "Inbound", "Allow", "Tcp", "*", [], "80", [], "*", []]
    ]
  }
  cmswebqa = {
    subnet_address_prefix = "10.11.0.128/25"
    service_endpoints     = ["Microsoft.Storage", "Microsoft.Sql"]
    nsg_inbound_rules     = []
    nsg_outbound_rules    = []
  }
}

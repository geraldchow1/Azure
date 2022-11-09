locals {
  vnetwork_name = lower("${var.product_region}-${format("%03d", var.customer_number + 1)}-VNET")
}
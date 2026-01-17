resource "azurerm_traffic_manager_profile" "traffic-profile" {
  name                   = "app-profile234000-new"
  resource_group_name    = var.resource_group_name
  traffic_routing_method = "Priority"

  dns_config {
    relative_name = "app-profile234000-new"
    ttl           = 100
  }

  monitor_config {
    protocol                     = "HTTPS"
    port                         = 443
    path                         = "/"
    interval_in_seconds          = 30
    timeout_in_seconds           = 9
    tolerated_number_of_failures = 3
  }

 }
resource "azurerm_traffic_manager_azure_endpoint" "endpoints" {
  for_each = var.traffic_manager_endpoints

  name               = each.key
  profile_id         = azurerm_traffic_manager_profile.traffic-profile.id
  priority           = each.value.priority
  weight             = each.value.weight

  target_resource_id = var.webapp_id[
    index(keys(var.traffic_manager_endpoints), each.key)
  ]
}

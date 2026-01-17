# Variable to hold the name of the Azure Resource Group
variable "resource_group_name" {
   type = string   # Must be a text value (e.g., "my-rg")
}

# Variable to define Traffic Manager endpoints
variable "traffic_manager_endpoints" {
     type = map(object({   # A map where each key points to an object
        priority = number  # Each endpoint must have a numeric priority (lower = higher priority in Traffic Manager)
        weight   = number  # Each endpoint must have a numeric weight (used for weighted routing)
     }))
     # Example: { "endpoint1" = { priority = 1, weight = 50 }, "endpoint2" = { priority = 2, weight = 50 } }
}

# Variable to hold a list of Web App IDs
variable "webapp_id" {
    type = list(string)   # A list of text values (e.g., ["app1-id", "app2-id"])
}

# Variable to hold a list of Web App hostnames
variable "webapp_hostname" {
   type = list(string)   # A list of text values (e.g., ["app1.azurewebsites.net", "app2.azurewebsites.net"])
}

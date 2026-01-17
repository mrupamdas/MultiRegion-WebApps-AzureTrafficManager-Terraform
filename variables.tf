# Variable to hold the name of the Azure Resource Group
variable "resource_group_name" {
   type = string   # Must be a text value (e.g., "my-rg")
}

# Variable to hold the location of the Azure Resource Group
variable "resource_group_location" {
  type = string   # Must be a text value (e.g., "eastus", "westeurope")
}

# Variable to define multiple Web App environments
variable "webapp_environment" {
     type = map(object({                # A map where each key points to an object
        service_plan_os_type  = string  # OS type for the App Service Plan (e.g., "Linux" or "Windows")
        service_plan_sku      = string  # SKU/tier for the App Service Plan (e.g., "B1", "S1", "P1v2")
        service_plan_location = string  # Azure region where the plan and web app will be deployed
        web_app_name          = string  # Name of the Web App to be created
     }))
}

# Variable to define Traffic Manager endpoints
variable "traffic_manager_endpoints" {
     type = map(object({   # A map where each key points to an object
        priority = number  # Numeric priority (lower = higher priority in failover routing)
        weight   = number  # Numeric weight (used for weighted routing distribution)
     }))
     # Example:
     # {
     #   "endpoint1" = { priority = 1, weight = 50 },
     #   "endpoint2" = { priority = 2, weight = 50 }
     # }
}

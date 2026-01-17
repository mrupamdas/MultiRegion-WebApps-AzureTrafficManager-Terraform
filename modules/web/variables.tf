# Variable to hold the name of the Azure Resource Group
variable "resource_group_name" {
   type = string   # Must be a text value (e.g., "my-rg")
}

# Variable to define multiple Web App environments
variable "webapp_environment" {
     type = map(object({                # A map where each key points to an object
        service_plan_os_type  = string  # OS type for the App Service Plan (e.g., "Linux" or "Windows")
        service_plan_sku      = string  # SKU/tier for the App Service Plan (e.g., "B1", "S1", "P1v2")
        service_plan_location = string  # Azure region where the plan and web app will be deployed (e.g., "eastus")
        web_app_name          = string  # Name of the Web App to be created
     }))
}

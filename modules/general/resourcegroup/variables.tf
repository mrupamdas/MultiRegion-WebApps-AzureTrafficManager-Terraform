# Declare a variable called "resource_group_name"
variable "resource_group_name" {
  type        = string        # The variable must be a string (text value)
  description = "This defines the name of the resource group"  # Helpful documentation for users
}

# Declare a variable called "location"
variable "location" {
  type        = string        # The variable must be a string (e.g., 'eastus', 'westeurope')
  description = "This defines the location of the resource group and the resources" # Explains purpose
}

resource "azurerm_resource_group" "demo_trail" {
  name     = "demo_trail_1"
  location = "uaenorth"
}
resource "azurerm_storage_account" "storetrail1234567" {
  name                = "storetrail7654321"
  resource_group_name = azurerm_resource_group.demo_trail.name

  location                 = azurerm_resource_group.demo_trail.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
# resource "azurerm_app_service_plan" "example" {
#   name                = "store_trail_plan"
#   resource_group_name = "demo_trail"
# }
# resource "azurerm_cost_management_export_resource_group" "example" {
#   name                    = "example"
#   resource_group_id       = azurerm_resource_group.example.id
#   recurrence_type         = "Monthly"
#   recurrence_period_start = "2020-08-18T00:00:00Z"
#   recurrence_period_end   = "2020-09-18T00:00:00Z"

#   delivery_info {
#     storage_account_id = azurerm_storage_account.example.id
#     container_name     = "examplecontainer"
#     root_folder_path   = "/root/updated"
#   }

#   query {
#     type       = "Usage"
#     time_frame = "WeekToDate"
#   }
# }
# resource "azurerm_function_app" 

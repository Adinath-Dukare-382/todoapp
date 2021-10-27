resource "azurerm_app_service" "example" {
#   name                = "example-app-service"
  for_each              = var.apps
  name                  = format("app-%s-%s",each.value.app_name,each.value.version)
  location            = var.location
  resource_group_name = var.resource_group_name
  app_service_plan_id = var.plan_id
}
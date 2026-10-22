output "resource_group_name" {
  value = azurerm_resource_group.main.name
}
 
output "log_analytics_workspace_id" {
  value = azurerm_log_analytics_workspace.main.id
}
 
output "logic_app_callback_url" {
  description = "HTTP trigger URL for the cost alert Logic App (contains a SAS signature; treat as a secret)."
  value       = azurerm_logic_app_trigger_http_request.alert.callback_url
  sensitive   = true
}
 
output "action_group_id" {
  value = azurerm_monitor_action_group.email_alerts.id
}

output "webapp_ids" {
  value = [
    for app in azurerm_windows_web_app.webapp :
    app.id
  ]
}

output "webapp_hostnames" {
  value = [
    for app in azurerm_windows_web_app.webapp :
    app.default_hostname
  ]
}
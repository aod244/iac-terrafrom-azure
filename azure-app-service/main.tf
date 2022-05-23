## Jest to przykład który znalazłem na GitHubie Hashicorp
## Co ciekawe na stronie dokumentacji jest napisane, że App Service działa tylko w wersji Terraform 3.0
## a w wersji 4.0 zostanie usunięty i zamiast niego zalecają używać azurerm_linux_web_app i azurerm_windows_web_app 
## w zależności od systemu operacyjnego jak mniemam. 


resource "azurerm_resource_group" "main" {
  name     = "${var.prefix}-resources" ## ten prefix nie został napisany przeze mnie tylko był już tutaj obecny, jednak uznałem że go zostawie, wydaje się całkiem praktyczny.
  location = var.location
}

resource "azurerm_app_service_plan" "main" {
  name                = "${var.prefix}-asp"
  location            = var.group_main_location
  resource_group_name = var.group_main_name

  sku {
    tier = var.sku.tier
    size = var.sku.size
  }
}

resource "azurerm_app_service" "main" {
  name                = "${var.prefix}-appservice"
  location            = var.group_main_location
  resource_group_name = var.group_main_name
  app_service_plan_id = azurerm_app_service_plan.main.id

  site_config {
    dotnet_framework_version = var.framework_version
    remote_debugging_enabled = var.debugging_enabled
    remote_debugging_version = var.debugging_version
  }
}
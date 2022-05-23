variable "prefix" {
    description = "Filip"
}

variable "location" {
    description = "West Europe"
}

variable "group_main_location" {
    type = string
    default = "azurerm_resource_group.main.location"
}

variable "group_main_name" {
    type = string
    default = "azurerm_resource_group.main.name"
}

variable "sku.tier" {
    type = string
    default = "basic"
}
variable "sku.size" {
    type = string
    default = "B1" 
}

variable "framework_version" {
    type = string
    default = "v4.0"
}

variable "debugging_enabled" {
    type = string
    default = "true"
}

variable "debugging_version" {
    type = string
    default = "VS2019"

}
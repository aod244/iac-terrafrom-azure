variable "loc" {
    type = string
    default = "West Europe"
}

variable "resource_group_name" {
    type =  string
    default = "nazwa_grupy_zasobow"
}

variable "storage_account_name" {
    type = string
    default = "nazwa konta"
}

variable "account_replication_type" {
    type = string
    default = "LRS"
}

variable "tier" {
    type = string
    default = "Standard"
}

variable "size" {
    type = string
    default = "F1"
}

variable "language" {
    type = string
    default = "Python"
}


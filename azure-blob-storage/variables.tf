variable "name" {
    type = string
    default ="jakasnazwa"
}

variable "location" {
    type = string
    default = "West Europe"
}

variable "account_name" {
    type = string
    default = "abc123@123mail.com"
}

variable "acc_tier" {
    type = string
    default = "Standard"
}

variable "acc_rep_type" {
    type = string
    default = "GRS"
}

variable "environment" {
    type = string
    default = "staging"
}

variable "container_name" {
    type = string
    default = "cantainer1"
}

variable "source" {
    type = string
    default = "some-file.zip"
}

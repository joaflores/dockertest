variable "subscription" {
    type = string
    default = ""
}

variable "tenant" {
    type = string
	default = ""
}

variable "rg_name"{
    type = string
    default = "dockertest-rg"
}

variable "region" {
    type = string
    default = "eastus2"
}

variable "acrname"{
	type = string
    default = "AppDockerTestRegistry"
}
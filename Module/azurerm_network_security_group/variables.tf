variable "nsg" {
    description = "A map of network security groups to create."
    type = map(object({
        name_nsg                = string
        resource_group_name = string
        location            = string
        destination_port_range     = string
        name_security_rule         = string
        }))
}
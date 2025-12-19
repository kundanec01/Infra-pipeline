variable "pip" {
  description = "A map of public IPs to create."
  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
    allocation_method   = optional(string, "Dynamic")
    sku                 = optional(string, "Basic")
  }))
}

variable "rg" {
  description = "A map of child resource groups to create."
  type        = map(object({
    name_rg    = string
    location = string
  }))
}

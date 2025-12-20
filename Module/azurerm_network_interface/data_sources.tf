
data "azurerm_public_ip" "pip" {
    for_each = var.nic
    name                = each.value.name_pip
    resource_group_name = each.value.resource_group_name
}

# data "azurerm_subnet" "first_subnet" {
#   for_each = var.nic

#   name                 = each.value.name_snet
#   virtual_network_name = each.value.name_vnet
#   resource_group_name  = each.value.resource_group_name
# }



data "azurerm_network_interface" "nic" {
  for_each = var.nsg-nic-assoc
    name                = each.value.name_nic
    resource_group_name = each.value.resource_group_name
}
data "azurerm_network_security_group" "nsg" {
  for_each = var.nsg-nic-assoc
  name                = each.value.name_nsg
  resource_group_name = each.value.resource_group_name
}

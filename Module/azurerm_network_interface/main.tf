variable "nic" {}
resource "azurerm_network_interface" "nic" {
  for_each = var.nic
  name                = each.value.name_nic
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  ip_configuration {
    name                          = each.value.name_ip
    subnet_id                     = data.azurerm_subnet.first_subnet[each.key].id
    # subnet_id =                   var.subnet_ids[each.key]

    private_ip_address_allocation = each.value.private_ip_address_allocation
    public_ip_address_id          = data.azurerm_public_ip.pip[each.key].id
  }
}
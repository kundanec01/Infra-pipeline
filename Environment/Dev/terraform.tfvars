
rg = {
  rg1 = {
    name_rg  = "kk-rg"
    location = "westus"
  }
}
stg = {
  stg1 = {
    name                     = "kkstorageacct1"
    resource_group_name      = "kk-rg"
    location                 = "westus"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
}

vnet = {
  vnet1 = {
    name                = "kundan-vnet"
    resource_group_name = "kk-rg"
    location            = "westus"
    address_space       = ["10.0.0.0/16"]
  }
}

subnet = {
  subnet1 = {
    name                 = "frontend-subnet"
    virtual_network_name = "kundan-vnet"
    resource_group_name  = "kk-rg"
    address_prefixes     = ["10.0.1.0/26"]
  }
  subnet2 = {
    name                 = "backend-subnet"
    virtual_network_name = "kundan-vnet"
    resource_group_name  = "kk-rg"
    address_prefixes     = ["10.0.2.0/26"]
  }
}

nic = {
  nic1 = {
    name_nic                      = "kkvm-nic"
    resource_group_name           = "kk-rg"
    location                      = "westus"
    name_ip                       = "zenips"
    private_ip_address_allocation = "Dynamic"
    name_pip                      = "kk-vm-pip"
    name_snet                     = "first-subnet"
    name_vnet                     = "kk-vnet"
    name_nsg                      = "kk-nsg"
  }
}

pip = {
  pip1 = {
    name                = "kk-vm-pip"
    resource_group_name = "kk-rg"
    location            = "westus"
    allocation_method   = "Static"
  }
}

nsg = {
  nsg1 = {
    name_nsg               = "kk-nsg"
    resource_group_name    = "kk-rg"
    location               = "westus"
    name_security_rule     = "sec"
    destination_port_range = "22"


  }
}

kv = {
  kv1 = {
    name_kv            = "kundankeyvault1245803"
    name_rg            = "kk-rg"
    location           = "westus"
    sku_name           = "standard"
    secret_permissions = ["Get", "List", "Set", "Delete", "Backup", "Restore", "Recover", "Purge", ]
    key_permissions    = ["Get", "List", "Create", "Delete", "Update", "Import", "Backup", "Restore", "Purge", "Recover", ]

  }
}

kvsu = {
  kvsu1 = {
    username   = "username-secret-pvt"
    user_value = "devopsadmin"
    name_kv    = "kundankeyvault1245803"
    name_rg    = "kk-rg"
  }
}

kvsp = {
  kvsp1 = {
    pswdname  = "password-secret"
    pas_value = "Passw@rd123"
    name_kv   = "kundankeyvault1245803"
    name_rg   = "kk-rg"
  }
}

vm = {
  vm1 = {
    name_vm       = "meravm"
    name_rg       = "kk-rg"
    location      = "westus"
    vm_size       = "Standard_F2"
    name_username = "username-secret"
    name_password = "password-secret"
    name_nic      = "kkvm-nic"
    name_kv       = "kundankeyvault1245803"
  }
}

nsg-nic-assoc = {
  assoc1 = {
    name_nic            = "kkvm-nic"
    name_nsg            = "kk-nsg"
    resource_group_name = "kk-rg"
  }
}

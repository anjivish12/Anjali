rgs = {
  rg1 = {
    name     = "rg-anjali-qa"
    location = "West US"

  }
}

vnets = {
  vnet1 = {
    name                = "rg-anjali-qavnet1"
    location            = "West US"
    resource_group_name = "rg-anjali-qa"
    address_space       = ["10.0.0.0/16"]
  }
}


subnets = {
  subnet1 = {
    name                 = "rg-anjali-qasubnet1"
    resource_group_name  = "rg-anjali-qa"
    virtual_network_name = "rg-anjali-qavnet1"
    address_prefixes     = ["10.0.0.0/24"]

  }

}


vms = {
  vm1 = {
    subnet_name          = "rg-anjali-qasubnet1"
    virtual_network_name = "rg-anjali-qavnet1"

    nic_name            = "rg-anjali-qa-nic1"
    location            = "West US"
    resource_group_name = "rg-anjali-qa"
    ip_configuration = {
      ipconfig1 = {
        name                          = "internal"
        private_ip_address_allocation = "Dynamic"


      }
    }


    vm_name        = "rg-anjali-qa-vm1"
    size           = "Standard_D4s_v3"
    username = "rg-anjali-qa"
    password = "rg-anjali-qa@12345"
    os_disk = {
      osdisk1 = {
        caching              = "ReadWrite"
        storage_account_type = "Standard_LRS"

      }
    }

    source_image_reference = {
      source_image_reference1 = {
        publisher = "Canonical"
        offer     = "0001-com-ubuntu-server-jammy"
        sku       = "22_04-lts"
        version   = "latest"
      }
    }

  }
}

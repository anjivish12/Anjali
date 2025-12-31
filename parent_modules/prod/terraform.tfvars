rgs = {
  rg1 = {
    name     = "rg-anjali-prod"
    location = "West US"

  }
}

vnets = {
  vnet1 = {
    name                = "rg-anjali-prodvnet1"
    location            = "West US"
    resource_group_name = "rg-anjali-prod"
    address_space       = ["10.0.0.0/16"]
  }
}


subnets = {
  subnet1 = {
    name                 = "rg-anjali-prodsubnet1"
    resource_group_name  = "rg-anjali-prod"
    virtual_network_name = "rg-anjali-prodvnet1"
    address_prefixes     = ["10.0.0.0/24"]

  }

}


vms = {
  vm1 = {
    subnet_name          = "rg-anjali-prodsubnet1"
    virtual_network_name = "rg-anjali-prodvnet1"

    nic_name            = "rg-anjali-prod-nic1"
    location            = "West US"
    resource_group_name = "rg-anjali-prod"
    ip_configuration = {
      ipconfig1 = {
        name                          = "internal"
        private_ip_address_allocation = "Dynamic"


      }
    }


    vm_name        = "rg-anjali-prod-vm1"
    size           = "Standard_D4s_v3"
    username = "rg-anjali-prod"
    password = "rg-anjali-prod@12345"
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

rgs = {
  rg1 = {
    name     = "anjali-dev"
    location = "West US"

  }
}

vnets = {
  vnet1 = {
    name                = "anjalidevvnet1"
    location            = "West US"
    resource_group_name = "anjali-dev"
    address_space       = ["10.0.0.0/16"]
  }
}


subnets = {
  subnet1 = {
    name                 = "anjali-devsubnet1"
    resource_group_name  = "anjali-dev"
    virtual_network_name = "anjalidevvnet1"
    address_prefixes     = ["10.0.0.0/24"]

  }

}


vms = {
  vm1 = {
    subnet_name          = "anjali-devsubnet1"
    virtual_network_name = "anjalidevvnet1"

    nic_name            = "anjali-dev-nic1"
    location            = "West US"
    resource_group_name = "anjali-dev"
    ip_configuration = {
      ipconfig1 = {
        name                          = "internal"
        private_ip_address_allocation = "Dynamic"


      }
    }


    vm_name        = "anjali-dev-vm1"
    size           = "Standard_D4s_v3"
    username = "anjali-dev"
    password = "AKIAIOSFODNN7EXAMPLE"
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

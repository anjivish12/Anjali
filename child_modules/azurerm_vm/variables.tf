variable "vms" {
    type = map(object({
        subnet_name = string
        virtual_network_name = string

      nic_name = string
      location = string
      resource_group_name = string
      ip_configuration = map(object({
        name = string
        
        private_ip_address_allocation = string

      }))
      vm_name = string
      size = string
      username = string
      password = string
      os_disk = map(object({
        caching = string
        storage_account_type = string
      }))
      source_image_reference = map(object({
        publisher = string
        offer = string
        sku = string
        version = string
      }))

    }))
} 
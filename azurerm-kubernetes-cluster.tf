resource "azurerm_kubernetes_cluster" "erf_plat_kubernetes_cluster" {
  name                = local.name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.dns_prefix

  default_node_pool {
    name                         = var.node_pool_name
    node_count                   = var.node_count
    vm_size                      = var.vm_size
    type                         = var.type
    vnet_subnet_id               = var.vnet_default_subnet_id != null ? var.vnet_default_subnet_id : null
    temporary_name_for_rotation  = var.temporary_name_for_rotation
    only_critical_addons_enabled = var.only_critical_addons_enabled
  }

  identity {
    type = var.identity
  }

  network_profile {
    network_plugin = var.network_plugin
    service_cidr   = var.service_cidr
    dns_service_ip = var.dns_service_ip
  }

  tags = {
    Environment = var.env
    Vnetid      = var.vnet_id
  }

  # timeouts {
  #   create = "4h"
  # }
}

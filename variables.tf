variable "env" {
  description = "Environment of the AKS cluster"
  type        = string
}

variable "application" {
  description = "The use case or project name for which the AKS cluster is being developed for."
  type        = string
}

variable "vnet_id" {
  description = "VNet Id which will be used for the AKS cluster."
  type        = string
}

variable "location" {
  description = "(Required) The location where the Managed Kubernetes Cluster should be created. Changing this forces a new resource to be created."
  type        = string
}

variable "resource_group_name" {
  description = "(Required) Specifies the Resource Group where the Managed Kubernetes Cluster should exist. Changing this forces a new resource to be created."
  type        = string
}

variable "dns_prefix" {
  description = "(Optional) DNS prefix specified when creating the managed cluster. Possible values must begin and end with a letter or number, contain only letters, numbers, and hyphens and be between 1 and 54 characters in length. Changing this forces a new resource to be created."
  type        = string
}

variable "identity" {
  description = "(Optional) An identity block. One of either identity or service_principal must be specified."
  type        = string
}

# variables of default_node_pool
variable "node_pool_name" {
  description = "(Required) The name which should be used for the default Kubernetes Node Pool."
  type        = string
}

variable "node_count" {
  description = "Number of nodes in the node pool."
  type        = number
}

variable "vm_size" {
  description = "(Required) The size of the Virtual Machine, such as Standard_DS2_v2. temporary_name_for_rotation must be specified when attempting a resize."
  type        = string
}


variable "vnet_default_subnet_id" {
  description = "(Optional) The ID of a Subnet where the Kubernetes Node Pool should exist."
  type        = string
}

variable "network_plugin" {
  description = "(Required) Network plugin to use for networking. Currently supported values are azure, kubenet and none. Changing this forces a new resource to be created."
  type        = string
  default     = "kubenet"
}

variable "service_cidr" {
  description = "(Optional) The Network Range used by the Kubernetes service. Changing this forces a new resource to be created."
  type        = string
  default     = "10.0.4.0/24"
}

variable "dns_service_ip" {
  description = "(Optional) IP address within the Kubernetes service address range that will be used by cluster service discovery (kube-dns). Changing this forces a new resource to be created."
  type        = string
  default     = "10.0.4.6"
}

variable "temporary_name_for_rotation" {
  description = "(Optional) Specifies the name of the temporary node pool used to cycle the default node pool for VM resizing."
  type        = string
}

variable "type" {
  description = "(Optional) The type of Node Pool which should be created. Possible values are AvailabilitySet and VirtualMachineScaleSets. Defaults to VirtualMachineScaleSets. Changing this forces a new resource to be created."
  type        = string
  default     = "VirtualMachineScaleSets"
}

variable "only_critical_addons_enabled" {
  description = "(Optional) Enabling this option will taint default node pool with CriticalAddonsOnly=true:NoSchedule taint. temporary_name_for_rotation must be specified when changing this property."
  type        = bool
  default     = true
}
 
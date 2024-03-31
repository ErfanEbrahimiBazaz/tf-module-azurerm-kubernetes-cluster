output "id" {
  value = azurerm_kubernetes_cluster.erf_plat_kubernetes_cluster.id
}

output "client_certificate" {
  value     = azurerm_kubernetes_cluster.erf_plat_kubernetes_cluster.kube_config[0].client_certificate
  sensitive = true
}

output "kube_config" {
  value     = azurerm_kubernetes_cluster.erf_plat_kubernetes_cluster.kube_config_raw
  sensitive = true
}

output "kubernetes_version" {
  value = azurerm_kubernetes_cluster.erf_plat_kubernetes_cluster.kubernetes_version
}

output "private_cluster_enabled" {
  value = azurerm_kubernetes_cluster.erf_plat_kubernetes_cluster.private_cluster_enabled
}



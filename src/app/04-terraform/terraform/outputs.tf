output "instance_ip" {
  description = "IP publique de l'instance"
  value       = scaleway_instance_ip.app.address
}

output "registry_endpoint" {
  description = "Endpoint du container registry Scaleway"
  value       = scaleway_registry_namespace.app.endpoint
}

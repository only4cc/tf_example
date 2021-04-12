# outputs.tf

output name {
  value       = "valor"
  sensitive   = false
  description = "description del output value"
  #depends_on  = []
}

output nombre_imagen {
  value       = docker_container.nginx.image
  description = "Id. de la imagen"
}

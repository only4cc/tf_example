#
terraform {
  required_version = ">= 0.12"
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
    }
  }
  backend "local" {
    path = "/home/jtrumper/proy/learn/tf_example/terraform/terraform.tfstate"
  } 
}



provider "docker" {}


resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = false
}


locals {
  internal_port_x_defecto = var.internal_local_port
}


resource "docker_container" "nginx" {
  image = docker_image.nginx.latest
  name  = "Prueba"
  ports {
    internal = local.internal_port_x_defecto 
    external = var.external_local_port
  }
}



# null_resource
resource "null_resource" "directorio" {
  # triggers = {
  #   trigger = value
  # }

  provisioner "local-exec" {
    command = "mkdir ./test"
  }
}



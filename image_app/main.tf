terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {
}

variable "image_name" {
  default = "team4"
}

variable "container_name" {
  default = "zodiaco"
}

variable "dockerfile_location" {
  default = "https://github.com/Noteram98/Docker_Test.git"
}

resource "null_resource" "build_docker_image" {
  provisioner "local-exec" {
    command = "docker build -t ${var.image_name} ${var.dockerfile_location}"
  }
  triggers = {
    always_run = "${timestamp()}"
  }
}

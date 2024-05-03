terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.0"
    }
  }
}

provider "kubernetes" {
    config_path    = "~/.kube/config"
    config_context_cluster = "minikube"
}

variable "app_name" {
  default = "team4"
}

variable "namespace" {
  default = "default"
}

variable "cpu_request" {
  default = "100m"  # Richiesta minima di CPU
}

variable "cpu_limit" {
  default = "200m"  # Limite massimo di CPU
}

variable "memory_request" {
  default = "128Mi"  # Richiesta minima di memoria
}

variable "memory_limit" {
  default = "256Mi"  # Limite massimo di memoria
}

resource "kubernetes_deployment" "app_deployment" {
  metadata {
    name = var.app_name
    namespace = var.namespace
  }

  spec {
    replicas = 3

    selector {
      match_labels = {
        app = var.app_name
      }
    }

    template {
      metadata {
        labels = {
          app = var.app_name
        }
      }

      spec {
        container {
          name  = var.app_name
          image = "team4"  # Assicurati che "team4" sia il nome corretto dell'immagine Docker
          # Aggiungi altri parametri come il mount dei volumi se necessario

          resources {
            requests = {
              cpu    = var.cpu_request
              memory = var.memory_request
            }
            limits = {
              cpu    = var.cpu_limit
              memory = var.memory_limit
            }
          }
        }
      }
    }
  }
}

resource "kubernetes_horizontal_pod_autoscaler" "app_autoscaler" {
  metadata {
    name = "${var.app_name}-autoscaler"
    namespace = var.namespace
  }

  spec {
    scale_target_ref {
      api_version = "apps/v1"
      kind        = "Deployment"
      name        = kubernetes_deployment.app_deployment.metadata.0.name
    }

    min_replicas = 1
    max_replicas = 10

    target_cpu_utilization_percentage = 50  # Modifica a seconda delle tue esigenze
  }
}

resource "kubernetes_service" "app_service" {
  metadata {
    name = var.app_name
    namespace = var.namespace
  }

  spec {
    selector = {
      app = var.app_name
    }

    type = "LoadBalancer"  # Esponi il servizio tramite un servizio di tipo LoadBalancer

    port {
      port        = 80
      target_port = 8080  # Assicurati che la porta target sia corretta
    }
  }
}

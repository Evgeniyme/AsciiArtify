terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.64.0"  # Replace with the desired version
    }
  }
}

provider "google" {
  credentials = "key.json"
  project     = "eastern-concord-298223"
  region      = "us-central1"
}

resource "google_compute_instance" "minikub-1" {
  name         = "minikub-1"
  machine_type = "e2-standard-2"
  zone         = "us-central1-a"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }
    network_interface {
    network = "default"
    access_config {
        }
    }   

  metadata_startup_script = <<-EOF
    #!/bin/bash
    apt-get update
    apt-get install -y docker.io
    systemctl start docker
    systemctl enable docker
    usermod -aG docker $USER && newgrp docker
    curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
    install minikube-linux-amd64 /usr/local/bin/minikube

    minikube start --driver=docker
  EOF
}
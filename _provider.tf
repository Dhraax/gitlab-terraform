terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "2.11.1"
    }
  }
}

variable "digitalocean_token" {}

provider "digitalocean" {
  token = "${var.digitalocean_token}"
}
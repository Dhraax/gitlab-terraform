resource "digitalocean_droplet" "GENERIC-PORTAL" {
  image = "ubuntu-18-04-x64"
  name = "GENERIC-PORTAL"
  region = "nyc3"
  size = "s-1vcpu-2gb"
  user_data = "${file("userdata.yaml")}"
  private_networking = true
  ssh_keys = [data.digitalocean_ssh_key.Terraform.id]
}

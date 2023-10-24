terraform {
  required_providers {
    hcloud = {
      source = "hetznercloud/hcloud"
      version = "1.44.1"
    }
  }
}


variable "hcloud_token" {
  sensitive = true
}

resource "hcloud_server" "node1" {
  name        = "Luciano2"
  image       = "ubuntu-22.04"
  server_type = "cx11"
  public_net {
    ipv4_enabled = true
    ipv6_enabled = true
  }
}
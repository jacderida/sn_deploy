terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
  backend "s3" {
    bucket = "safe-testnet-tool"
    key    = "terraform.tfstate"
    region = "eu-west-2"
  }
}

resource "digitalocean_droplet" "genesis_node" {
  count    = 1
  image    = var.node_image_name
  name     = "${terraform.workspace}-genesis"
  region   = var.region
  size     = var.node_size
  ssh_keys = var.ssh_keys
  tags     = ["genesis"]
}

resource "digitalocean_droplet" "node" {
  count    = var.node_count
  image    = var.node_image_name
  name     = "${terraform.workspace}-node-${count.index}"
  region   = var.region
  size     = var.node_size
  ssh_keys = var.ssh_keys
  tags     = ["node"]
}

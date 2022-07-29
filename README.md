# sn_deploy

Deploy the Safe Network on a set of infrastructure, like virtual machines on a cloud provider.

## Digital Ocean

We can deploy a network on a set of Digital Ocean droplets (virtual machines), where each droplet
will run a node.

### Setup

Install the following tools on your platform:
* [Terraform](https://www.terraform.io/downloads)
* [Just](https://github.com/casey/just#installation)
* [do-ansible-inventory](https://www.digitalocean.com/community/tools/do-ansible-inventory)

Set the `DIGITALOCEAN_TOKEN` variable to your API token.

Run `just digital-ocean <environment-name>`, e.g., `just digital-ocean beta`.

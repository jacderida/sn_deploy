#!/usr/bin/env just --justfile

digital-ocean environment node_count:
  #!/usr/bin/env bash
  set -e
  cd terraform/digital-ocean
  terraform init
  terraform workspace select {{environment}}
  terraform apply -auto-approve -var node_count={{node_count}}

clean-digital-ocean environment:
  #!/usr/bin/env bash
  set -e
  cd terraform/digital-ocean
  terraform init
  terraform workspace select {{environment}}
  terraform destroy -auto-approve

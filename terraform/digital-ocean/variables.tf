variable "node_count" {
  default = 5
}

variable "node_image_name" {
  default = "ubuntu-22-04-x64"
}

variable "region" {
  default = "lon1"
}

variable "node_size" {
  default = "s-2vcpu-4gb"
}

variable "ssh_keys" {
  type    = list(number)
  default = [
    26204985, # David Irvine
    19315097, # Stephen Coyle
    29201567, # Josh Wilson
    29586082, # Gabriel Viganotti
    29690435, # Yogeshwar Murugan
    29690776, # Edward Holst
    30643816, # Anselme Grumbach
    30113222, # Qi Ma
    30878672, # Chris O'Neil
    31216015, # QA
    34183228, # GH Actions Automation
  ]
}

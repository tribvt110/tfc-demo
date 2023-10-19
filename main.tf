# main.tf

# Provider configuration (e.g., AWS, Azure, etc.)
provider "aws" {
  region = "us-west-2"
}

# Null resource definition
resource "null_resource" "example" {
  # Triggers the resource to be recreated if the value of `message` changes
  triggers = {
    message = "${var.message}"
  }

  # Provisioner block to execute commands
  provisioner "local-exec" {
    command = "echo ${var.message}"
  }
}

# Variable definition
variable "message" {
  type    = string
  default = "Hello, Terraform! This is a message."
}

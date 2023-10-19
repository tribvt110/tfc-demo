# Define the provider (e.g., AWS)
provider "aws" {
  region = "us-west-2"
}

# Create a null_resource
resource "null_resource" "example" {
  # Define the triggers for the null_resource
  triggers = {
    # Add any triggers here if needed
  }

  # Define the provisioner for the null_resource
  provisioner "local-exec" {
    command = "echo 'Hello, Terraform!'"
  }
}

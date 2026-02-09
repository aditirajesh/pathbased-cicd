terraform {
  required_providers {
    null = {
      source = "hashicorp/null"
      version = ">= 3.0"
    }
  }
}

provider "null" {}

resource "null_resource" "test" {
  provisioner "local-exec" {
    command = "echo Terraform ran at $(date)"
  }
}

#no aws account is required to run this terraform code. 

resource "local_file" "my_file" {
  content  = "Hello, friends my first terraform code!"
  filename = "${path.module}/automate.txt"
}
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}  


provider "aws" {
  region = "ap-south-1"
}
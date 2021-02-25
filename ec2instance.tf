terraform {
  required_providers{
      aws = {
          source = "hashicorp/aws"
      }
  }
}

provider "aws" {
  profile = "default"
  region = "eu-west-2"
}

resource "aws_instance" "devbox" {
  ami = "ami-0ffd774e02309201f"
  instance_type = "t2.micro"
}

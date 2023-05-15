terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-west-1"
}

resource "aws_instance" "devops_server" {
  ami           = "ami-014d05e6b24240371"
  instance_type = "t2.micro"

  tags = {
    Name = "DevOpsAppServerInstance"
  }
}

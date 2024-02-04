terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.30.0"
    }
  }
}

provider "aws" {
  region  = "eu-west-1"
}

resource "aws_instance" "MeritoWSB" {
  ami           = "ami-00526aba2644bba2d"
  instance_type = "t2.micro"

  tags = {
    Name = "MeritoWSB"
  }
}

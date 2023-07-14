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
  region  = "us-west-2"
  access_key = "AKIA6E2T4SUGWUIHZDMB"
  secret_key = "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"
}

resource "aws_instance" "app_server" {
  ami           = "ami-03f65b8614a860c29"
  instance_type = "t2.micro"
  key_name = "iac-henrique"

  tags = {
    Name = "PrimeiraInstancia"
  }
}
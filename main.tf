provider "aws" {
  region = "us-east-1"
  assume_role {
    role_arn = ""
  }
}


resource "aws_security_group" "allow_all" {
  name        = "teste-atlantis-terraform"
  description = "Allow all inbound traffic"
  vpc_id      = "vpc-a7aaa3de"

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
    prefix_list_ids = ["pl-12c4e678"]
  }
}


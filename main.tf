provider "aws" {
  region = "us-east-1"
}


resource "aws_security_group" "allow_all" {
  name        = "aprestacao_atlantis"
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
  }
}

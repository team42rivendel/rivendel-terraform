provider "aws" {
  region = "us-east-1"
  assume_role {
    role_arn = "arn:aws:iam::485164690107:instance-profile/EC2Full"
  }
}


resource "aws_security_group" "allow_all" {
  name        = "allow_all_atlantis"
  description = "Allow all inbound traffic"
  vpc_id      = "vpc-a7aaa3de"
  region      = "us-east-1"

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


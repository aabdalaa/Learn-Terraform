resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Permite acesso remoto via porta 22 (ssh)"
  vpc_id      = "vpc-040d37746b1b17a8d"

  ingress {
    description      = "ssh from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_ssh"
  }
}

resource "aws_security_group" "allow_http" {
  name        = "allow_http"
  description = "Permite acesso via protocolo http (porta 80)"
  vpc_id      = "vpc-040d37746b1b17a8d"

  ingress {
    description      = "http from VPC"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_http"
  }
}

resource "aws_security_group" "allow_https" {
  name        = "allow_https"
  description = "Permite acesso via protocolo https (porta 443)"
  vpc_id      = "vpc-040d37746b1b17a8d"

  ingress {
    description      = "https from VPC"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_https"
  }
}

resource "aws_security_group" "allow_egress" {
  name        = "allow_egress"
  description = "Permite egress"

    egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_egress"
  }
}
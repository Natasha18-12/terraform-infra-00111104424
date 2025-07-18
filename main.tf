resource "aws_security_group" "allow_custom_port" {
  name        = "allow_custom_port"
  description = "Allow inbound traffic on custom port"

  ingress {
    from_port   = var.custom_port
    to_port     = var.custom_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "ubuntu_server" {
  ami           = var.ami_id
  instance_type = "t2.micro"
  security_groups = [aws_security_group.allow_custom_port.name]

  tags = {
    Name = "UbuntuServer"
  }
}

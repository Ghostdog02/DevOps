provider "aws" {
  region  = "eu-north-1"
}

resource "aws_security_group" "my_sg" {
  name        = "moso-web-dev-sg"
  description = "Allow SSH and HTTP"

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.home-ipv4-address]
  }

  ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = [var.home-ipv4-address]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"          # -1 means all traffic
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "web-dev-sg"
  }
}

resource "aws_key_pair" "deployer" {
  key_name   = "development"
  public_key = file("~/.ssh/aws_testing_ed25519.pub")
}

resource "aws_instance" "my_server" {
  ami           = "ami-01ef747f983799d6f"
  instance_type = "t3.micro"
  key_name = aws_key_pair.deployer.key_name
  vpc_security_group_ids = [aws_security_group.my_sg.id]
  
  tags = {
    Name = "web01"
    Project = "Moso"
    Environment = "Dev"
    Owner = "DevOpsTeam"
  }
}

output "public_ip" {
  value = aws_instance.my_server.public_ip
}
provider "aws" {
  region = "us-east-1"
}

resource "aws_security_group" "web-server"{
  name = "web-server-sg"
  description = "allow ssh into ec2 machine"

  ingress  {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_key_pair" "server-key"{
  key_name = "ec2-key"
  public_key = file("~/.ssh/fvishw.pub")
}

resource "aws_instance" "web-server" {
  ami = "ami-08f44e8eca9095668"
  instance_type = "t3.micro"
  key_name = aws_key_pair.server-key.key_name

  vpc_security_group_ids = [aws_security_group.web-server.id] 

  tags ={
    owner = "vishw"
    enviornment = "dev"
    project= "pathnex_cohort"
  }
}
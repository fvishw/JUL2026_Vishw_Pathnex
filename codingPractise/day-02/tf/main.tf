provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "web-server"{
    ami = "ami-08f44e8eca9095668"
    instance_type = "m5.2xlarge"

    tags = {
        enviornment = "prod",
        owner = "vishw",
        name  = "web-server"
    }
}
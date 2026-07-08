provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "fvishw"{
    ami = "ami-08f44e8eca9095668"
    instance_type = "t3.micro"

    tags  = {
        enviornment = "dev"
    }
}

# tf init = intall provider and deps
# tf plan = what can be created
# tf apply = apply to 
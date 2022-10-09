terraform {
}

provider "aws" {
  region  = "us-west-2"
  profile = "jimena-eks"
}

resource "aws_instance" "app_server" {
  ami           = "ami-08d70e59c07c61a3a"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}

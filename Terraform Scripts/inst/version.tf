terraform {
  #required_version = "~> 1.0"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      #version = "~> 3.0"
    }
  }
}

#Provider Block
provider "aws" {
  region  = "us-east-1"
  profile = "default"
}


resource "aws_instance" "myvm2" {
  ami           = "ami-0dc2d3e4c0f9ebd18"
  instance_type = "t2.micro"
  #availability_zone = "us-east-l"
  #count = 5
  tags = {
    "Name" = "myvm"
    #"Name" = "web-${count.index}"
  }
}   
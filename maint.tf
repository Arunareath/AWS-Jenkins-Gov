provider "aws" {
    region = var.aws_region
}

resource "aws_instance" "example" {

    ami = "ami-025244f2c0c149bb5"
    instance_type = "t3.micro"

    tags = {
      Name = "Test instance"
    }
  
}

variable "aws_region" {
    type = string
    description = "Region to Deploy"
    default = "us-gov-west-1"
}
variable "ami_value" {
    description = "Value for the ami"
}

variable "instance_type_value" {
    description = "value for instance_type"
}

variable "subnet_id_value" {
    description = "value for the subnet_id"
}

provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "example_instance" {
    ami = "var.ami_value"
    instance_type = "var.instance_type_value"
    subnet_id = "var.subnet_id_value"
}
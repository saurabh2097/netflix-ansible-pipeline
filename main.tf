provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "one" {
count = 6
ami = "ami-050fd9796aa387c0d"
instance_type = "t2.micro"
key_name = "saurabh557keypair"
vpc_security_group_ids = ["sg-04c9513fe03ef799f"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins & ansible", "dev-1", "dev-2","test-1","test-2" ,"Monitoring server"]
}

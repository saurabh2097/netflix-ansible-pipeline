provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "one" {
count = 6
ami = "ami-0a9a48ce4458e384e"
instance_type = "t2.micro"
key_name = "saurabhteraformkeypair"
vpc_security_group_ids = ["sg-0421382adccde5d20"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins & ansible", "dev-1", "dev-2","test-1","test-2" "Monitoring server"]
}

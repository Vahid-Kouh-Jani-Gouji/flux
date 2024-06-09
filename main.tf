provider "aws" {
    region = "us-west-2"  # Replace with your desired region
}

resource "aws_instance" "example" {
    ami           = "ami-0c94855ba95c71c99"  # Replace with the Ubuntu AMI ID for your desired region
    instance_type = "t2.small"
}

resource "aws_security_group" "my_security_group" {
    name        = "my_security_group"
    description = "Allow inbound traffic on port 22 and 80"
    vpc_id      = "vpc-0c1f4b6b1b4b4b4b4"  # Replace with your VPC ID

    ingress {
        from_port   = 22
        to_port     = 22
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
}


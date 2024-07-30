provider "aws" {
    region = "us-west-2"
}



resource "aws_instance" "aws_ec2_test" {
        count = 2
        ami = "ami-0aff18ec83b712f05"
        instance_type = "t2.micro"
        tags = {
     Name = "test-instance"
  }
}

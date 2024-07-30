terraform{
        required_providers{
        aws = {
        source = "hashicorp/aws"
        version = "~> 4.16"
}
}
required_version = ">= 1.2.0"
}
provider "aws"{
        region = "us-west-2"
}
locals {
        instances = {"aditya":"ami-074be47313f84fa38","shubham":"ami-0aff18ec83b712f05","raj":"ami-0aff18ec83b712f05"}
}

resource "aws_instance" "my_ec2_test"{
        for_each = local.instances
        ami = each.value
        instance_type = "t2.micro"
        tags = {
                Name = each.key
}
}

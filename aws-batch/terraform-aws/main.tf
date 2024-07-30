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
resource "aws_instance" "my_ec2_instance"{
        count = 5
        ami = "ami-0aff18ec83b712f05"
        instance_type = "t2.micro"
        tags = {
                Name = "TerraformBatch-Instance"
}
}
resource "aws_s3_bucket" "my_s3_bucket" {
        bucket = "terrabhai-bucket"
         tags = {
                Name = "terrabhai-bucket"
                Environment = "Dev"
}
}

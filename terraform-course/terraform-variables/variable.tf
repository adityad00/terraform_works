variable "filename" {
	default = "/home/ubuntu/terraform_works/terraform-course/terraform-variables/devops-automated.txt"
}

variable "content" {
        default = "this is auto generated variable"
}

variable "devops_op_trainer" {}

variable "content_map" {
	type = map
	default = {
	"content1" = "this is cool kid"
	"content2" = "this is cool nerd"
}
}
variable "file_list" {
	type = list
	default = ["/home/ubuntu/terraform_works/terraform-course/terraform-variables/file-1.txt","/home/ubuntu/terraform_works/terraform-course/terraform-variables/file-2.txt"]
}

variable "aws_ec2_object" {
      type = object({
	name = string
	instances = number
	keys = list(string)
	ami = string
})
default = {

	name ="test_ec2_instance"
	instances = 4
        keys = ["key1.pem","key2.pem"]
        ami = "ubuntu-afed34"
}
}
variable "no_of_students" {}

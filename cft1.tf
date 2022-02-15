
provider "aws" {
region = "ap-southeast-1"
alias =  "Singapore"
}
variable "acc_no1" {
  type = string
}

variable "access_key1" {
  type = string
}

variable "secret_access_key1" {
  type = string
}
resource "aws_cloudformation_stack" "project1" {
  name = "project-stack"
  capabilities     = ["CAPABILITY_NAMED_IAM"]
  template_url = "https://s3-projectnew1.s3.ap-south-1.amazonaws.com/project3.json"
}

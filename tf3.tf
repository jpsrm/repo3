
provider "aws" {
region = "ap-south-1"
alias =  "Mumbai"
}
variable "acc_no" {
  type = string
}

variable "access_key" {
  type = string
}

variable "secret_access_key" {
  type = string
}
resource "aws_cloudformation_stack" "project" {
  name = "project-stack"
  capabilities     = ["CAPABILITY_NAMED_IAM"]
  template_url = "https://projects31.s3.ap-south-1.amazonaws.com/project2.json"
}

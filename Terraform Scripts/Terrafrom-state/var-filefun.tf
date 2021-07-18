#Input variables
variable "aws_region" {
  description = "In Which region resource to be allocated"
  type        = string
  default     = "us-east-1"
}

variable "ec2_ami_id" {
  description = "AMI ID"
  type        = string
  default     = "ami-0ab4d1e9cf9a1215a"
}

variable "ec2_instance_count" {
  description = "AMI Instance count"
  type        = number
  default     = 1
}
variable "ec2_instznce_type" {
  description = "Instance Type"
  type        = string
  default     = "t3.micro"
}
variable "aws_region" {
  default = "us-east-1"
}

variable "environment" {
  default = "dev"
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
}

variable "db_username" {
  default = "admin"
}

variable "db_password" {
  default = "password1234"
}


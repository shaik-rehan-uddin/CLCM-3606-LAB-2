variable "instance_name" {
  default = "Lab Application Server"
}

variable "ami_id" {
  default = "ami-0fc5d935ebf8bc3bc"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  default = "Lab-Application-Server"
}

variable "vpc_id" {
  type = string
}

variable "public_subnet_id" {
  type = string
}

variable "aws_iam_instance_profile" {
  type = string
}

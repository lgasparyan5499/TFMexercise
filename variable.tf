
variable "instance-type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "tag_name" {
  description = "EC2 Name"
  type        = string
  default     = "EC2"
}

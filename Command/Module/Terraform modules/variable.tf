variable "aws_region"{
  type = string
  default = "us-west-1"
}

variable "ec2name"{
  type = string
}

variable "inst_type"{
  type = string
  default = "t2.medium"
}

variable "my_key"{
  type = string
  default = "Class29key.pem"
}

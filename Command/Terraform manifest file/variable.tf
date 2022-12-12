Now you can create a variable file
variable.tf
# Input Variables
variable "aws_region" {
  description = "Region in which AWS resources to be created"
  type        = string
  default     = "us-west-1"
}

variable "ec2_ami_id" {
  description = "AMI ID"
  type        = string
  default     = "ami-0915bcb5fa77e4892" # Amazon2 Linux AMI ID
}

variable "ec2_instance_count" {
  description = "EC2 Instance type"
  type        = string
  default     = "t2.micro"
}

variable "key_pair" { #(This is used to attached a key that has already be created in your ec2 under key pair on ec2 at the left side of the screen)
  description = "key to Ec2 instance"
  type        = string
  default     = "Class29key.pem"
}

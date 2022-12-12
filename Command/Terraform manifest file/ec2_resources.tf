Then create a Resources file ec2.tf
# Resource Block
resource "aws_instance" "ec2demo" {
  ami           = var.ec2_ami_id
  instance_type = var.ec2_instance_count
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  
  tag = {
   "Name" = "Terraform server"
   }
}


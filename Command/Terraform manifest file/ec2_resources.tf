Then create a Resources file ec2.tf
# Resource Block
resource "aws_instance" "ec2demo" {
  ami           = data.aws_ami.amazon_linux.id #(data. resource type. name you used to save the resource (resource name). id)
  instance_type = var.ec2_instance_count
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  
  tag = {
   "Name" = "Terraform server"
   }
}


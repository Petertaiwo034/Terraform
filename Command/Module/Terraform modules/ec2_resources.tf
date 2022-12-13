resource "aws_instance" "ec2" {
    ami = data.aws_ami.amzlinux2.id
    instance_type = var.inst_type
    key_name = var.
    tags = {
        Name = var.ec2name
    }
}



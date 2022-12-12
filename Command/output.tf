#Create an output file e.g output.tf
output "instance_publicip" {
  description = "Ec2 public Ip"
  value = aws_instance.ec2demo.public_ip
}
#After you run terraform apply -auto-apply it will output the public ip address. 

#Create an output file e.g output.tf
output "instance_publicip" {
  description = "Ec2 public Ip"
  value = aws_instance.ec2demo.public_ip #(Name of your resources. Name you used to store it. and the resource you want to output)
}
#After you run terraform apply -auto-apply it will output the public ip address. 

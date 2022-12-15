#If you want to source you data like "ami" yourself, you don't have to go to aws to copy an ami id. Go to terraform registry and select AWS as the provider 
#and on the left side of the screen select "Documentation". search for EC2 and under EC2 scroll down to Data source and you wil see aws_ami. select and under 
#Example you will see the sample file below

data "aws_ami" "amazon linus" {
  most_recent      = true
  owners           = ["amazon"] #(it could be. self if you have create your ami yourself 

  filter {
    name   = "name"                     
    values = ["amzn2-ami-kernel-5.10-hvm-*-gp2"] #(Go to amazon and copy an ami id ami-02160391b456f1164 and go to ami under image on the left side of the screen and paste the ami to the 
                      #Search box and it will bring out the name "amzn2-ami-kernel-5.10-hvm-2.0.20221103.3-x86_64-gp2" clear the number and architecture between 
                      #it and put the aisterik sign there *  amzn2-ami-kernel-5.10-hvm-*-gp2      
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"] #( check for it also at the ami search result)
  }
  
   filter {
    name   = "virtualization-type"
    values = ["hvm"]#( check for it also at the ami search result)
  }

  filter {
  }
    name   = "architecture"
    values = ["x86_64"]#( check for it also at the ami search result)
  }
}


#Now in your resource file you have to pass the data source
resource "aws_instance" "web" {
  ami           = data.aws_ami.amazon linus.id (data. resource type. name you used to save the resource (resource name). id)
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}

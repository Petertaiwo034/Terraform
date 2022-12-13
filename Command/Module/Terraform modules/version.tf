#terraform block
terraform {
  required_version = "~> 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0" # Optional but recommended in production
    }
  }
}


#provider block
provider "aws" {
  region  = var.aws_region
  profile = "Landmark"
}
module "ec2module" { #ec2module is the name I give to the module it could be any name
    source = "./Terraform modules" #Terraform modules is the name of directory all my files are saved
    ec2name = "Demo-ec2" #This can be any name, in the variable file in terraform modules I passed a variable without passin the default so this here will
                          #will serve as an input because the variable name is ec2name and in the resource was enetered as var.ec2name. 
}
  
output "module_output" {
    value = module.ec2module.instance_id #Because in the terraform modules directory there is an output so it must be mentioned here. 
                                         #ec2module is the name of my module.instance_id is the name of my output. 
}

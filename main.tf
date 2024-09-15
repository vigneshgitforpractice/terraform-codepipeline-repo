provider "aws" {
  region = "ap-south-1"
}

module "aws_ec2" {
  source = "./modules/aws-ec2-instance"
  subnet_id = "subnet-0301e5522b0683cc2"
  instance_name = "hellobro"
  iam_instance_profile = "lambdarole"
  instance_type = "t2.small"
}

output "ec2" {
  value = "aws_instance.vm.private_ip"
}
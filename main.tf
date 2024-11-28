provider "aws" {
  region = "ap-south-1"
}
resource "aws_instance" "vm" {
  ami           = "ami-08b782cba29b6fee3"
  instance_type = r2.micro
    tags = {
    Name = hello
  }
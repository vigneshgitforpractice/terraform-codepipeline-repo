# Specify the provider
provider "aws" {
  region = "ap-south-1" # Replace with your desired region
}

# Declare a key pair (optional, use an existing key pair)
# resource "aws_key_pair" "my_key" {
#   key_name   = "my-key-pair" # Replace with your key name
#   public_key = file("~/.ssh/id_rsa.pub") # Path to your public key file
# }

# Create a security group
resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow SSH traffic"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Allow from anywhere (adjust for security)
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Launch an EC2 instance
resource "aws_instance" "my_instance" {
  ami           = "ami-08048b042dd26bddb" # Replace with a valid AMI ID for your region
  instance_type = "t2.micro"             # Choose the instance type (Free Tier eligible)

  #key_name      = aws_key_pair.my_key.key_name # Reference the key pair
  security_groups = [aws_security_group.allow_ssh.name] # Attach the security group

  tags = {
    Name = "MyEC2Instance" # Tag for the instance
  }
}

# Output the instance public IP
output "instance_public_ip" {
  value = aws_instance.my_instance.public_ip
}

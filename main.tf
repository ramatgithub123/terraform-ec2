provider "aws" {
  region = "ap-south-1"  # Change to your preferred region
}

resource "aws_instance" "example" {
  ami           = "ami-04a37924ffe27da53"  # Change to your preferred AMI
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-ec2-example"
  }
}

resource "aws_instance" "mywebserver" {
  ami           = "ami-04a37924ffe27da53"  # Change to your preferred AMI
  instance_type = "t2.micro"

  tags = {
    Name = "mywebserver1"
  }


}


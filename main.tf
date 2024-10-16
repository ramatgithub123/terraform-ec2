provider "aws" {
  region = "ap-south-1"  # Change to your preferred region
}


resource "aws_instance" "ec2usinggithubactions" {
  ami           = "ami-04a37924ffe27da53"  # Change to your preferred AMI
  instance_type = "t2.micro"

  tags = {
    Name = "ec2usinggithubactions"
  }


}


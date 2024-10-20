provider "aws" {
  region = "ap-south-1"  # Change to your preferred region
}


resource "aws_instance" "Terraform-ec2-example" {
  ami           = "ami-04a37924ffe27da53"  # Change to your preferred AMI
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-ec2-example"
  }

}

provider "kubernetes" {
  config_path    = "~/.kube/config"
  config_context = "minikube"
}

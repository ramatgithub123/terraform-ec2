provider "aws" {
  region = "ap-south-1"  # Change to your preferred region
}


resource "aws_instance" "Terraform-ec2-example" {
  ami           = "ami-04a37924ffe27da53"  # Change to your preferred AMI
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-ec2-example"
  }

#provisioner "remote-exec" {
# inline = [
#    "sudo yum update -y",
#    "sudo yum install -y docker",
#    "sudo service docker start",
#    "sudo usermod -aG docker ec2-user",
#    "curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64",
#    "chmod +x minikube",
#    "sudo mv minikube /usr/local/bin/",
#    "minikube start --driver=docker"
#  ]
# connection {
#    type        = "ssh"
#    user        = "ec2-user"
#    private_key = file("ec2_key.pem")
#    host        = "${aws_instance.Terraform-ec2-example.public_ip}"
#  }
#}
}

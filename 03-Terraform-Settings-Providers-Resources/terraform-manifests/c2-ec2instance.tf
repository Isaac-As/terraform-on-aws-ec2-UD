# Resource: EC2 Instance
resource "aws_instance" "myec2vm" {
  ami = "ami-0ae8f15ae66fe8cda"
  instance_type = "t3.micro"
  user_data = file("${path.module}/app1-install.sh")
  tags = {
    "Name" = "EC2 Demo"
  }
}
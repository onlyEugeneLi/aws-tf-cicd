# EC2 module

resource "aws_instance" "dev_cicd_tf_provisioned_instance" {
  ami = "ami-08221e706f343d7b7"
  instance_type = "t2.micro"
  subnet_id = var.public_subnet # in which subnet
  security_groups = [var.security_group] # attach which security group to it

  tags = {
    Name = "tf_provisioned_instance"
  }
}
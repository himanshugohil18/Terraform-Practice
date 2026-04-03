#key pair 

resource "aws_key_pair" "my_key" {
  key_name   = "terraform-key-ec2"
  public_key = file("terraform-key-ec2.pub")
}

#vpc and sg

resource "aws_default_vpc" "default" {

}

resource "aws_security_group" "my_security_group" {
  name        = "automate-sg"
  description = "this will add a TF genrated security group"
  vpc_id      = aws_default_vpc.default.id

  #inbound rules 
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "allow ssh from anywhere"
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "allow http from anywhere"
  }

  ingress {
    from_port   = 8000
    to_port     = 8000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "allow my app from anywhere"
  }

  #outbound rules 

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "all access open outbound"
  }

  tags = {
    Name = "automate-sg"
  }

}

#ec2 instance 

resource "aws_instance" "my_instance" {

  ami = var.ec2_ami_id
  instance_type = var.ec2_instance_type

  key_name = aws_key_pair.my_key.key_name

  vpc_security_group_ids = [aws_security_group.my_security_group.id]

  user_data = file("install_nginx.sh")

  root_block_device {
    volume_size = var.ec2_root_storage_size
    volume_type = "gp3"
  }

  tags = {
    Name = "him-ec2"
  }

}

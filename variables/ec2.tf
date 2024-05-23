resource "aws_instance" "db" {
    ami = var.image_id
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]
    instance_type = var.instance_type

    tags = var.tags
}

resource "aws_security_group" "allow_ssh"{
    name = "var.sg_name"
    description = "var.sg_description"
  
  ingress {
    from_port        = var.sshport
    to_port          = var.sshport
    protocol         = var.protocol
    cidr_blocks      = var.allowed_CIDR
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }


    tags = {
    Name = "allow_ssh"
    createdby = "Khyathi"
  }

}



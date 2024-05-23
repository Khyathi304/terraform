resource "aws_instance" "db" {
    ami = "ami-090252cbe067a9e58"
    vpc_security_group_ids = ["sg-0cc3410a80400092e"]
    instance_type = "t2.micro"

    tags = {
    Name = "db"
    
  }
}
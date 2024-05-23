variable "image_id" {
    type = string
    default = "ami-090252cbe067a9e58"
    description = "RHEL-9 AMI Id"
}

variable "instance_type" {
    default = "t3.micro"
}

variable "tags" {
    default = {
        project = "Expense"
        Environment = "Dev"
        Module = "DB"
        Name = "DB"
    }
}

variable "sg_name" {
    default = "allow_ssh"
}

variable "sg_description" {
    description = "allowing SSH Access"
}

variable "sshport" {
    default = 22
}

variable "protocol" {
    default = "tcp"
}

variable "allowed_CIDR" {
    type = list(string)
    default = ["0.0.0.0/0"]
}

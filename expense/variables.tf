# ec2-variables
variable "instance_names" {
    type = list
    default = ["db", "backend", "frontend"]
}

variable "image_id" {
    type = string
    default = "ami-090252cbe067a9e58"
    description = "RHEL-9 AMI Id"
}

variable "instance_type" {
    default = "t3.micro"
}

variable "common_tags" {
    default = {
        project = "Expense"
        Environment = "Dev"
        Terraform = "true"
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


# r53 variables
variable "zone_id" {
    default = "Z04896861296OY0TZDEFL"
}

variable "domain_name" {
    default = "daws304.online"
  
}
variable "instance_names" {
  type = map
  default = {
    db = "t3.small"
    backend = "t3.micro"
    frontend = "t3.micro"
  }
}



variable "common_tags" {
    type = map
    default = {
        project = "Expense"
        Terraform = "true"
    }
}

variable "domain_name" {
    default = "daws304.online"
  
}

variable "zone_id" {
    default = "Z04896861296OY0TZDEFL"
}


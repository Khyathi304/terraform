resource "aws_instance" "expense" {
    for_each = var.instance_names
    ami = data.aws_ami.ami_info.id
    vpc_security_group_ids = ["sg-0cc3410a80400092e"]
    instance_type = each.value

    tags = merge(
        var.common_tags,
        {
            Name = each.key
            Module = each.key
        }
    )
}
resource "aws_instance" "example"  {
    ami = local.ami_id
    instance_type = local.instance_type
    vpc_security_group_ids=[aws_security_group.allow_tls.id]

    tags = local.ec2_final_tags

}

resource "aws_security_group"  "allow_tls"  {
    name = var.sg_name
    description = var.sg_description


    egress {
    from_port        = var.sg_from_port
    to_port          = var.sg_to_port
    protocol         = "-1"
    cidr_blocks      = var.sg_cidr_blocks
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    from_port        = var.sg_from_port
    to_port          = var.sg_to_port
    protocol         = "-1"
    cidr_blocks      = var.sg_cidr_blocks
    ipv6_cidr_blocks = ["::/0"]
  }


    tags = var.sg_tags


}
locals {
    ami_id =  "ami-0220d79f3f480ecf5"
    instance_type = "t3.micro"
    common_tags =  {
        Name = "${var.name}-${var.env}"
        env = "dev"
        terraform = "true"
        project = "roboshop"
    }
    ec2_final_tags = merge(local.common_tags.var.ec2_tags)
    
}
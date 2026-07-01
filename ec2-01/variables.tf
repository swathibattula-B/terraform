varible "ami_id" {
    type = string
    default = "ami-0220d79f3f480ecf5"
}
variable "instance_type" {
    type = string
    default = "t3.micro"
} 
variable "ec2_tags" {
    type = map
    default = {
        Name =  "terraform"
        project = "roboshop"
        env = "dev"
        terraform = "true"
    }
}

variable "sg_name" {
    type = string
    default = "allow-all-terraform"
}
variable "sg_description" {
    type = string
    default = "allow all inbound and outbound traffic"

}

variable "sg_from_port" {
    type =  number
    default = 0
}
variable "sg_to_port" {
    type =  number
    default = 0
}

variable "sg_cidr_blocks" {
    type = list
    default = ["0.0.0.0/0"]
}
variable "sg_tags" {
     
    Name = "allow-all-terraform"
}
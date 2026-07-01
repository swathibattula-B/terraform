data "aws_ami" "joindevops" {
    owners = ["973714476881]


filter {
    name = "ami_name"
    values = ["Redhat-9-DevOps-Practice"]
}

filter {
    name = "Virtualization type"
    values = ["hvm"]
}

}
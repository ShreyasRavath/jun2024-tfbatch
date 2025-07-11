data "aws_ami" "myami" {
    most_recent = true
    owners = ["amazon"]
    filter {
        name = "name"
        values = ["al2023-ami-2023*"]
    }
}

locals {
    project-contact = "Shreyas@dxc.com"
}

resource "aws_instance" "myec2instance" {
    ami = data.aws_ami.myami.id
    #instance_type = "t2.medium"
    instance_type = "t2.2xlarge"
    tags = {
        "Name" = "ec2instance-test"
        "Project-Contact" = local.project-contact
    }
}

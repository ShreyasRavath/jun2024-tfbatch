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
#adding comment
resource "aws_s3_bucket" "mybucket1" {
    bucket= "checkbucket-shreyas-jun2024-1"
    acl = "private"
    tags = {
        "Name" = "ec2instance-test"
        "Project" = local.project-contact
    }
}

resource "aws_s3_bucket" "mybucket2" {
    bucket= "checkbucket-shreyas-jun2024-2"
    acl = "private"
    tags = {
        "Name" = "ec2instance-test"
        "Project" = local.project-contact
    }
}

resource "aws_s3_bucket" "mybucket3" {
    bucket= "checkbucket-shreyas-jun2024-3"
    acl = "private"
    tags = {
        "Name" = "ec2instance-test"
        "Project" = local.project-contact
    }
}

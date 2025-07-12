provider "aws" {
    region  = "us-east-1"
}

resource "aws_instance" "terraform-jenkins-pipeline" {
    ami           = "ami-04e914639d0cca79a"
    instance_type = "t2.micro"
    tags = {
        Name = "terraform-jenkins-pipeline"
    }
}
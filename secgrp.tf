resource "aws_security_group" "vprofile-bean-elb-sg" {
    name = "vprofile-bean-elb-sg"
    description = "Security group from bean-elb"
    vpc_id = module.vpc.vpc_id
    egress = {
        from_port = 0
        protocol = "-1"
        to_port = 0
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress = {
        from_port = 80
        protocol = "tcp"
        to_port = 80
        cidr_blocks = ["0.0.0.0/0"]
    }
}

resource "aws_security_group" "vprofile-bastion-sg" {
    name = "vprofile-bastion-sg"
    description = "Security group for bastion EC2 instance"
    vpc_id = module.vpc.vpc_id
    egress = {
        from_port = 0
        protocol = "-1"
        to_port = 0
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress = {
        from_port = 22
        protocol = "tcp"
        to_port = 22
        cidr_blocks = [var.MYIP]
    }
}
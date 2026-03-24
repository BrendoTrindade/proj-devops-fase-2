resource "aws_instance" "ec2_fases" {
  ami                    = "ami-02dfbd4ff395f2a1b"
  instance_type          = "t3.micro"
  key_name               = "proj-3-fases"
  vpc_security_group_ids = [aws_security_group.sg_fases.id]
  iam_instance_profile   = "ecr_ec2_role"

  tags = {
    Name = "ec2_fases"
  }
}



resource "aws_security_group" "sg_fases" {
  name   = "sg_3fases"
  vpc_id = "vpc-0c475caaf3b056648"

  tags = {
    Name = "sg_lab"
  }
}


resource "aws_vpc_security_group_ingress_rule" "allow_ssh" {
  security_group_id = aws_security_group.sg_fases.id

  cidr_ipv4   = "SEU IP AQUI"
  from_port   = 22
  ip_protocol = "tcp"
  to_port     = 22
}

resource "aws_vpc_security_group_ingress_rule" "allow_http" {
  security_group_id = aws_security_group.sg_fases.id

  cidr_ipv4   = "0.0.0.0/0"
  from_port   = 80
  ip_protocol = "tcp"
  to_port     = 80
}


resource "aws_vpc_security_group_ingress_rule" "allow_https" {
  security_group_id = aws_security_group.sg_fases.id

  cidr_ipv4   = "0.0.0.0/0"
  from_port   = 443
  ip_protocol = "tcp"
  to_port     = 443
}


resource "aws_vpc_security_group_egress_rule" "lab-fases-sainda" {
  security_group_id = aws_security_group.sg_fases.id

  cidr_ipv4   = "0.0.0.0/0"
  ip_protocol = -1
}

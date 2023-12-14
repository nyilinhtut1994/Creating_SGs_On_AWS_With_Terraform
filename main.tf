resource "aws_security_group" "sg_all" {
  provider = aws.main 
  name        = "sg_all"
  description = "security group"
  vpc_id      = "YOUR VPC ID"

  tags = {
    Name ="sg_all"
  }
}

resource "aws_security_group_rule" "http_ingress" {
  provider = aws.main 
  security_group_id = resource.aws_security_group.sg_all.id
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "https_ingress" {
  provider = aws.main 
  security_group_id = resource.aws_security_group.sg_all.id
  type              = "ingress"
  from_port         = 443
  to_port           = 443
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/24"]
}

resource "aws_security_group_rule" "icmp_ingress" {
  provider = aws.main 
  security_group_id = resource.aws_security_group.sg_all.id
  type              = "ingress"
  from_port         = -1  # -1 indicates all ICMP types
  to_port           = -1  # -1 indicates all ICMP types
  protocol          = "icmp"
  cidr_blocks       = ["0.0.0.0/0"]
}

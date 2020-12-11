resource "aws_security_group" "security_group" {
  name        = "vSensor-sg_test"
  description = "inbound & outbound"
  vpc_id      = var.vpc_id

  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = "${var.sg1_ingress_cidr_blocks}"
  }

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = "${var.sg2_ingress_cidr_blocks}"
  }

  ingress {
    from_port = 4789
    to_port = 4789
    protocol = "UDP"
    cidr_blocks = "${var.sg1_ingress_cidr_blocks}" 
  }
  
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = "${var.sg1_egress_cidr_blocks}"
  }

  tags = {
    Name = "darktrace-vSensor-sg"
  }
}
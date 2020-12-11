
resource "aws_instance" "darktrace" {
  count = var.instance_count
  
  ami              = var.ami_id
  instance_type    = var.instance_type
  user_data        = "${file("../user-data-script.cloud-init")}"
  subnet_id        = var.subnet_id
  vpc_security_group_ids = ["${aws_security_group.security_group.id}"]
  depends_on = [aws_key_pair.deployer,]
  key_name = "$(aws_key_pair.var.key)"

  tags = {
      Name = "darktrace-vSensor-1"
  }
}

resource "aws_key_pair" "deployer" {
  key_name   = "${var.keyname}"
  public_key = "${var.publickey}"
}

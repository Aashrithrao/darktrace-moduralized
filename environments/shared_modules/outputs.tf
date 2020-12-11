output "instance_count" {
  description = "Number of instances to launch specified as argument to this module"
  value       = "${var.instance_count}"
}

output "aws_key_pair" {
  description = "List of key names of instances"
  value       = "${aws_instance.deployer.key_name}"
}

output "security_groups" {
  description = "List of associated security groups of instances"
  value       = "${aws_instance.aws_security_group.security_groups}"
}

data "aws_ami" "amiID" {
  most_recent = true
  owners      = ["136693071363"]

  filter {
    name   = "name"
    values = ["debian-13-amd64-*"]
  }

  filter {
    name   = "name"
    values = ["hvm"]
  }
}

output "instance_id" {
  description = "AMI ID of Debian instance"
  value       = data.aws_ami.amiID.id
}